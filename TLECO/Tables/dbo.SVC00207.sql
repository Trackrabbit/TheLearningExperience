CREATE TABLE [dbo].[SVC00207]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQPLINE] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SVC00207I] ON [dbo].[SVC00207]  FOR INSERT AS  declare @Old_status char(3),   @New_status char(3),   @CallNumber char(11),   @Service_record_type smallint,   @Service_type char(11),   @Time_to_wait smallint,   @Next_LineSeq int,   @Next_run_time smalldatetime,   @Next_task_name varchar(100),   @Next_Command varchar(100),   @ValidateCommand varchar(100),  @Next_Comment varchar(255),   @TIMEZONE char(3),  @TIMEZONEDIFF numeric(17,5),  @TimeZoneValue smallint,  @TimeZoneMinute smallint,  @msg varchar(60),  @retval int,  @TECHID char(11),  @OrigTechID char(11),  @NewTechID char(11),  @EscTechID char(11),  @iTechCtr int,  @EscType smallint,  @SQLAgentOn smallint  set @SQLAgentOn = 1  select  @New_status = SVC00200.SRVSTAT,   @CallNumber = SVC00200.CALLNBR,   @TIMEZONE = SVC00200.TIMEZONE,   @Service_record_type = SVC00200.SRVRECTYPE,   @Service_type = SVC00200.SRVTYPE,   @OrigTechID = SVC00200.TECHID,   @NewTechID = inserted.TECHID  from inserted   inner join SVC00200 on SVC00200.SRVRECTYPE = inserted.SRVRECTYPE and SVC00200.CALLNBR = inserted.CALLNBR and inserted.TECHID <> ''  order by inserted.CALLNBR  if @New_status <> '' and @Service_type <> '' and @NewTechID <> '' begin   if not exists(select 1 from SVC00922 (nolock) where SRVTYPE = @Service_type and (FRMSTAT = '' or FRMSTAT <= @New_status) and (TOSTAT = '' or TOSTAT = @New_status))  return   begin try  if isnull(is_srvrolemember(N'sysadmin'), 0) = 1  begin  if not exists(select * from sysobjects where name = '#servicecontrol')  create table #servicecontrol (ServiceStatus char(40))  insert into #servicecontrol  exec master.dbo.xp_servicecontrol 'querystate', 'SQLSERVERAGENT'  if not exists(select 1 from #servicecontrol where ServiceStatus like 'Run%')  set @SQLAgentOn = 0  drop table #servicecontrol  end  else  begin  if not exists(select 1 from master.dbo.sysprocesses where program_name = N'SQLAgent - Generic Refresher')  begin  set @SQLAgentOn = 0  end  end  end try  begin catch   set @SQLAgentOn = 0  end catch;   select  @TimeZoneValue = TIMEZONEVALUE,   @TimeZoneMinute = TimeZoneMinute   from SVC00900   where TIMEZONE = @TIMEZONE    if @TimeZoneValue > 0   select @TIMEZONEDIFF = @TimeZoneValue + @TimeZoneMinute * 60.0  else  select @TIMEZONEDIFF = @TimeZoneValue - @TimeZoneMinute * 60.0   select @TIMEZONEDIFF = case  when @TIMEZONEDIFF is null then 0   else @TIMEZONEDIFF  end   DECLARE ServiceTypeEscalations CURSOR  FOR  select TECHID, LNITMSEQ, WAITTME, ESCTYPE from SVC00922 (nolock) where SRVTYPE = @Service_type and (FRMSTAT = '' or FRMSTAT <= @New_status) and (TOSTAT = '' or TOSTAT = @New_status)  order by LNITMSEQ ASC   OPEN ServiceTypeEscalations  FETCH NEXT FROM ServiceTypeEscalations INTO @TECHID, @Next_LineSeq, @Time_to_wait, @EscType   WHILE @@FETCH_STATUS = 0  BEGIN  exec SVC_Calc_Escalation_Sched2   @CallNumber,  @Time_to_wait,  @TIMEZONEDIFF,   @Next_run_time output    set @iTechCtr = 0   if rtrim(@TECHID) <> '' and rtrim(@TECHID) <> 'MANAGER' and rtrim(@TECHID) <> rtrim(@NewTechID)  begin  DECLARE ServiceTechnicians CURSOR LOCAL  FOR  select TOP 1 @TECHID from inserted  where SRVRECTYPE = @Service_record_type and CALLNBR = @CallNumber  end  else  begin  DECLARE ServiceTechnicians CURSOR LOCAL  FOR  select distinct TECHID from inserted  where SRVRECTYPE = @Service_record_type and CALLNBR = @CallNumber  and (@TECHID = '' or @TECHID = 'MANAGER' or (@TECHID <> '' and @TECHID <> 'MANAGER' and  TECHID = @TECHID))  and TECHID <> ''  order by TECHID ASC  end  OPEN ServiceTechnicians  FETCH NEXT FROM ServiceTechnicians INTO @EscTechID  WHILE @@FETCH_STATUS = 0  BEGIN  select @Next_task_name = rtrim(@CallNumber) + '.' + ltrim(str(@Next_LineSeq)) + ltrim(str(@iTechCtr)) + ' ' + rtrim(CONVERT(varchar(10), GETDATE(), 2)) + '-' + CONVERT(varchar(10), GETDATE(), 108)  select @Next_task_name = right(ltrim(rtrim(@Next_task_name)), 30)  set @iTechCtr = @iTechCtr + 1   set @Next_Command = ''  exec SVC_Gen_Escalation_Command  @SrvRecType   = @Service_record_type,   @CallNumber   = @CallNumber,   @LineSeq   = @Next_LineSeq,  @Status   = @New_status,   @SrvType   = @Service_type,  @TaskName   = @Next_task_name,  @IncludeLineSeq  = 1,  @IncludeTaskName = 1,  @Command   = @Next_Command OUTPUT   select @Next_Command = isnull(@Next_Command, '')   set @Next_Comment = ''  exec SVC_Gen_Escalation_Comment   @CallNumber,  @Service_record_type,  @Next_LineSeq,  @EscTechID,  @Service_type,  @Next_Comment OUTPUT  select @Next_Comment = isnull(@Next_Comment, '')   set @ValidateCommand = ''  exec SVC_Gen_Escalation_Command  @SrvRecType   = @Service_record_type,   @CallNumber   = @CallNumber,   @LineSeq   = @Next_LineSeq,  @Status   = @New_status,   @SrvType   = @Service_type,  @TaskName   = @Next_task_name,  @IncludeLineSeq  = 0,  @IncludeTaskName = 0,  @Command   = @ValidateCommand OUTPUT   if @Next_run_time is null  select @Next_Comment = ''  else  begin  exec SVC_Update_Escalation_Audit   2,  @CallNumber,  @Next_run_time,   @Next_task_name,   @Next_Command,   @Next_Comment,  @SQLAgentOn,  1,  @ValidateCommand   end   FETCH NEXT FROM ServiceTechnicians INTO @EscTechID   END  CLOSE ServiceTechnicians  DEALLOCATE ServiceTechnicians  FETCH NEXT FROM ServiceTypeEscalations INTO @TECHID, @Next_LineSeq, @Time_to_wait, @EscType  end  CLOSE ServiceTypeEscalations  DEALLOCATE ServiceTypeEscalations end  return   
GO
ALTER TABLE [dbo].[SVC00207] ADD CONSTRAINT [PKSVC00207] PRIMARY KEY NONCLUSTERED  ([SRVRECTYPE], [CALLNBR], [EQPLINE], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00207] ON [dbo].[SVC00207] ([SRVRECTYPE], [CALLNBR], [TECHID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00207] ON [dbo].[SVC00207] ([TECHID], [SRVRECTYPE], [CALLNBR], [EQPLINE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00207].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00207].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00207].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00207].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00207].[TECHID]'
GO
GRANT SELECT ON  [dbo].[SVC00207] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00207] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00207] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00207] TO [DYNGRP]
GO
