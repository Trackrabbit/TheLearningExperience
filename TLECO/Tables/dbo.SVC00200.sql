CREATE TABLE [dbo].[SVC00200]
(
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[SRVSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVCDESCR] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[priorityLevel] [smallint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Customer_Reference] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVCAREA] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[Notify_Date] [datetime] NOT NULL,
[Notify_Time] [datetime] NOT NULL,
[ETADTE] [datetime] NOT NULL,
[ETATME] [datetime] NOT NULL,
[DISPDTE] [datetime] NOT NULL,
[DISPTME] [datetime] NOT NULL,
[ARRIVDTE] [datetime] NOT NULL,
[ARRIVTME] [datetime] NOT NULL,
[COMPDTE] [datetime] NOT NULL,
[COMPTME] [datetime] NOT NULL,
[Response_Date] [datetime] NOT NULL,
[Response_Time] [datetime] NOT NULL,
[PRICELVL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABSTOTPRC] [numeric] (19, 5) NOT NULL,
[LABPCT] [numeric] (19, 5) NOT NULL,
[LABSTOTCST] [numeric] (19, 5) NOT NULL,
[PARSTOTPRC] [numeric] (19, 5) NOT NULL,
[PARTPCT] [numeric] (19, 5) NOT NULL,
[PARSTOTCST] [numeric] (19, 5) NOT NULL,
[MSCSTOTPRC] [numeric] (19, 5) NOT NULL,
[MISCPCT] [numeric] (19, 5) NOT NULL,
[MISSTOTCST] [numeric] (19, 5) NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRETAXTOT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[METER1] [int] NOT NULL,
[METER2] [int] NOT NULL,
[METER3] [int] NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[NOTFYFLAG] [tinyint] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTRRECTYPE] [smallint] NOT NULL,
[MSTRCALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ESCDATE] [datetime] NOT NULL,
[ESCTIME] [datetime] NOT NULL,
[Escalation_Level] [int] NOT NULL,
[SPLTTERMS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Callback] [tinyint] NOT NULL,
[PROJCTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectRef1_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectRef1_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectRef1_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectRef1_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Line_SEQ] [numeric] (19, 5) NOT NULL,
[ETTR] [numeric] (19, 5) NOT NULL,
[SVC_On_Hold] [tinyint] NOT NULL,
[Print_to_Web] [tinyint] NOT NULL,
[Meters_1] [int] NOT NULL,
[Meters_2] [int] NOT NULL,
[Meters_3] [int] NOT NULL,
[Meters_4] [int] NOT NULL,
[Meters_5] [int] NOT NULL,
[Meter_Internal_Uses_1] [int] NOT NULL,
[Meter_Internal_Uses_2] [int] NOT NULL,
[Meter_Internal_Uses_3] [int] NOT NULL,
[Meter_Internal_Uses_4] [int] NOT NULL,
[Meter_Internal_Uses_5] [int] NOT NULL,
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[VIEWMODE] [smallint] NOT NULL,
[ISMCTRX] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[ORIGMISSTOTCST] [numeric] (19, 5) NOT NULL,
[ORIGMSCSTOTPRC] [numeric] (19, 5) NOT NULL,
[ORIGLABSUBTOTCOST] [numeric] (19, 5) NOT NULL,
[ORIGLABSTOTPRC] [numeric] (19, 5) NOT NULL,
[ORIGPARSTOTCST] [numeric] (19, 5) NOT NULL,
[ORIGPARSTOTPRC] [numeric] (19, 5) NOT NULL,
[ORIGPRETAXTOT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[ORIGTOTAL] [numeric] (19, 5) NOT NULL,
[Orig_Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Pre600] [tinyint] NOT NULL,
[SVC_FO_ID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replaces_1] [tinyint] NOT NULL,
[Replaces_2] [tinyint] NOT NULL,
[Replaces_3] [tinyint] NOT NULL,
[Replaces_4] [tinyint] NOT NULL,
[Replaces_5] [tinyint] NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SVC00200IU] ON [dbo].[SVC00200]  FOR INSERT,UPDATE  AS  declare @Old_status char(3),   @New_status char(3),   @Service_call_number char(11),   @Service_record_type smallint,   @Service_type char(11),   @old_Service_type char(11),   @Time_to_wait smallint,   @Next_LineSeq int,   @Next_run_time smalldatetime,   @Next_task_name varchar(100),   @Next_Command varchar(100),   @ValidateCommand varchar(100),  @Next_Comment varchar(255),   @TIMEZONE char(3),  @TIMEZONEDIFF numeric(17,5),  @TimeZoneValue smallint,  @TimeZoneMinute smallint,  @msg varchar(60),  @retval int,  @TECHID char(11),  @OldTechID char(11),  @OrigTechID char(11),  @EscTechID char(11),  @iTechCtr int,  @EscType smallint,  @SQLAgentOn smallint  select @Old_status = SRVSTAT, @old_Service_type = SRVTYPE, @OldTechID = TECHID from deleted  select @Old_status = isnull(@Old_status,'z9z')   select  @New_status = SRVSTAT,   @Service_call_number = CALLNBR,  @TIMEZONE = TIMEZONE,   @Service_record_type = SRVRECTYPE,   @Service_type = SRVTYPE,  @OrigTechID = TECHID  from inserted   if @old_Service_type <> @Service_type or @OrigTechID <> @OldTechID begin  if exists(select * from SVC00211 where SRVRECTYPE = @Service_record_type and CALLNBR = @Service_call_number  and SVC_Escalation_Status = 1)  begin   update SVC00211 set SVC_Escalation_Status = 2   where SRVRECTYPE = @Service_record_type and CALLNBR = @Service_call_number   and SVC_Escalation_Status = 1  end end  if @Old_status <> @New_status   or @old_Service_type <> @Service_type begin   if not exists(select 1 from SVC00922 where SRVTYPE = @Service_type and (FRMSTAT = '' or FRMSTAT <= @New_status) and (TOSTAT = '' or TOSTAT = @New_status))  return   set @SQLAgentOn = 1  begin try  if isnull(is_srvrolemember(N'sysadmin'), 0) = 1  begin  if not exists(select * from sysobjects where name = '#servicecontrol')  create table #servicecontrol (ServiceStatus char(40))  insert into #servicecontrol  exec master.dbo.xp_servicecontrol 'querystate', 'SQLSERVERAGENT'  if not exists(select 1 from #servicecontrol where ServiceStatus like 'Run%')  set @SQLAgentOn = 0  drop table #servicecontrol  end  else  begin  if not exists(select 1 from master.dbo.sysprocesses where program_name = N'SQLAgent - Generic Refresher')  begin  set @SQLAgentOn = 0  end  end  end try  begin catch   set @SQLAgentOn = 0  end catch;   select  @TimeZoneValue = TIMEZONEVALUE,   @TimeZoneMinute = TimeZoneMinute   from SVC00900   where TIMEZONE = @TIMEZONE    if @TimeZoneValue > 0   select @TIMEZONEDIFF = @TimeZoneValue + @TimeZoneMinute * 60.0  else  select @TIMEZONEDIFF = @TimeZoneValue - @TimeZoneMinute * 60.0   select @TIMEZONEDIFF = case  when @TIMEZONEDIFF is null then 0   else @TIMEZONEDIFF  end   DECLARE ServiceTypeEscalations CURSOR  FOR  select TECHID, LNITMSEQ, WAITTME, ESCTYPE from SVC00922 where SRVTYPE = @Service_type and (FRMSTAT = '' or FRMSTAT <= @New_status) and (TOSTAT = '' or TOSTAT = @New_status)  order by LNITMSEQ ASC   OPEN ServiceTypeEscalations  FETCH NEXT FROM ServiceTypeEscalations INTO @TECHID, @Next_LineSeq, @Time_to_wait, @EscType   WHILE @@FETCH_STATUS = 0  BEGIN  exec SVC_Calc_Escalation_Sched2   @Service_call_number,  @Time_to_wait,  @TIMEZONEDIFF,   @Next_run_time output    set @iTechCtr = 0   if exists(select 1 from SVC00207 where SRVRECTYPE = @Service_record_type and CALLNBR = @Service_call_number)  begin  DECLARE ServiceTechnicians CURSOR LOCAL  FOR  select distinct TECHID from SVC00207   where SRVRECTYPE = @Service_record_type and CALLNBR = @Service_call_number  and (@TECHID = '' or @TECHID = 'MANAGER' or (@TECHID <> '' and @TECHID <> 'MANAGER' and  TECHID = @TECHID))  and TECHID <> ''  order by TECHID ASC  end  else  begin  DECLARE ServiceTechnicians CURSOR LOCAL  FOR  select distinct TECHID from inserted  where SRVRECTYPE = @Service_record_type and CALLNBR = @Service_call_number  and (@TECHID = '' or @TECHID = 'MANAGER' or (@TECHID <> '' and @TECHID <> 'MANAGER' and  TECHID = @TECHID))  and TECHID <> ''  order by TECHID ASC  end   if rtrim(@TECHID) <> '' and rtrim(@TECHID) <> 'MANAGER'  begin  if not exists(select 1 from SVC00207 where SRVRECTYPE = @Service_record_type and CALLNBR = @Service_call_number and TECHID = @TECHID)  and @OrigTechID <> @TECHID  begin  deallocate ServiceTechnicians  DECLARE ServiceTechnicians CURSOR LOCAL  FOR  select TOP 1 @TECHID from inserted  where SRVRECTYPE = @Service_record_type and CALLNBR = @Service_call_number  end  end   OPEN ServiceTechnicians  FETCH NEXT FROM ServiceTechnicians INTO @EscTechID  WHILE @@FETCH_STATUS = 0  BEGIN  select @Next_task_name = rtrim(@Service_call_number) + '.' + ltrim(str(@Next_LineSeq)) + ltrim(str(@iTechCtr)) + ' ' + rtrim(CONVERT(varchar(10), GETDATE(), 2)) + '-' + CONVERT(varchar(10), GETDATE(), 108)  select @Next_task_name = right(ltrim(rtrim(@Next_task_name)), 30)  set @iTechCtr = @iTechCtr + 1   set @Next_Command = ''  exec SVC_Gen_Escalation_Command  @SrvRecType   = @Service_record_type,   @CallNumber   = @Service_call_number,   @LineSeq   = @Next_LineSeq,  @Status   = @New_status,   @SrvType   = @Service_type,  @TaskName   = @Next_task_name,  @IncludeLineSeq  = 1,  @IncludeTaskName = 1,  @Command   = @Next_Command OUTPUT   select @Next_Command = isnull(@Next_Command, '')   set @Next_Comment = ''  exec SVC_Gen_Escalation_Comment   @Service_call_number,  @Service_record_type,  @Next_LineSeq,  @EscTechID,  @Service_type,  @Next_Comment OUTPUT  select @Next_Comment = isnull(@Next_Comment, '')   set @ValidateCommand = ''  exec SVC_Gen_Escalation_Command  @SrvRecType   = @Service_record_type,   @CallNumber   = @Service_call_number,   @LineSeq   = @Next_LineSeq,  @Status   = @New_status,   @SrvType   = @Service_type,  @TaskName   = @Next_task_name,  @IncludeLineSeq  = 0,  @IncludeTaskName = 0,  @Command   = @ValidateCommand OUTPUT   if @Next_run_time is null  select @Next_Comment = ''  else  begin  exec SVC_Update_Escalation_Audit   2,  @Service_call_number,  @Next_run_time,   @Next_task_name,   @Next_Command,   @Next_Comment,  @SQLAgentOn,  0,  @ValidateCommand  end   FETCH NEXT FROM ServiceTechnicians INTO @EscTechID   END  CLOSE ServiceTechnicians  DEALLOCATE ServiceTechnicians  FETCH NEXT FROM ServiceTypeEscalations INTO @TECHID, @Next_LineSeq, @Time_to_wait, @EscType  end  CLOSE ServiceTypeEscalations  DEALLOCATE ServiceTypeEscalations end  return   
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__ARRIVT__3568C3A6] CHECK ((datepart(day,[ARRIVTME])=(1) AND datepart(month,[ARRIVTME])=(1) AND datepart(year,[ARRIVTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__COMPTM__37510C18] CHECK ((datepart(day,[COMPTME])=(1) AND datepart(month,[COMPTME])=(1) AND datepart(year,[COMPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__DISPTM__3939548A] CHECK ((datepart(day,[DISPTME])=(1) AND datepart(month,[DISPTME])=(1) AND datepart(year,[DISPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__ENTTME__3B219CFC] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__ESCTIM__3D09E56E] CHECK ((datepart(day,[ESCTIME])=(1) AND datepart(month,[ESCTIME])=(1) AND datepart(year,[ESCTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__ETATME__3EF22DE0] CHECK ((datepart(day,[ETATME])=(1) AND datepart(month,[ETATME])=(1) AND datepart(year,[ETATME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__Notify__42C2BEC4] CHECK ((datepart(day,[Notify_Time])=(1) AND datepart(month,[Notify_Time])=(1) AND datepart(year,[Notify_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__Respon__44AB0736] CHECK ((datepart(day,[Response_Time])=(1) AND datepart(month,[Response_Time])=(1) AND datepart(year,[Response_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__TIME1__459F2B6F] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__ARRIVD__34749F6D] CHECK ((datepart(hour,[ARRIVDTE])=(0) AND datepart(minute,[ARRIVDTE])=(0) AND datepart(second,[ARRIVDTE])=(0) AND datepart(millisecond,[ARRIVDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__COMPDT__365CE7DF] CHECK ((datepart(hour,[COMPDTE])=(0) AND datepart(minute,[COMPDTE])=(0) AND datepart(second,[COMPDTE])=(0) AND datepart(millisecond,[COMPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__DISPDT__38453051] CHECK ((datepart(hour,[DISPDTE])=(0) AND datepart(minute,[DISPDTE])=(0) AND datepart(second,[DISPDTE])=(0) AND datepart(millisecond,[DISPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__ENTDTE__3A2D78C3] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__ESCDAT__3C15C135] CHECK ((datepart(hour,[ESCDATE])=(0) AND datepart(minute,[ESCDATE])=(0) AND datepart(second,[ESCDATE])=(0) AND datepart(millisecond,[ESCDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__ETADTE__3DFE09A7] CHECK ((datepart(hour,[ETADTE])=(0) AND datepart(minute,[ETADTE])=(0) AND datepart(second,[ETADTE])=(0) AND datepart(millisecond,[ETADTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__EXCHDA__3FE65219] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__EXPNDA__40DA7652] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__Notify__41CE9A8B] CHECK ((datepart(hour,[Notify_Date])=(0) AND datepart(minute,[Notify_Date])=(0) AND datepart(second,[Notify_Date])=(0) AND datepart(millisecond,[Notify_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [CK__SVC00200__Respon__43B6E2FD] CHECK ((datepart(hour,[Response_Date])=(0) AND datepart(minute,[Response_Date])=(0) AND datepart(second,[Response_Date])=(0) AND datepart(millisecond,[Response_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00200] ADD CONSTRAINT [PKSVC00200] PRIMARY KEY CLUSTERED  ([SRVRECTYPE], [CALLNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9SVC00200] ON [dbo].[SVC00200] ([CONTNBR], [CONSTS], [SVC_Contract_Line_SEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SVC00200] ON [dbo].[SVC00200] ([CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC00200] ON [dbo].[SVC00200] ([Customer_Reference], [CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00200] ON [dbo].[SVC00200] ([SRVRECTYPE], [CUSTNMBR], [ADRSCODE], [ENTDTE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00200] ON [dbo].[SVC00200] ([SRVRECTYPE], [OFFID], [SRVSTAT], [priorityLevel], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00200] ON [dbo].[SVC00200] ([SRVRECTYPE], [PORDNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC00200] ON [dbo].[SVC00200] ([SRVRECTYPE], [SRVSTAT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00200] ON [dbo].[SVC00200] ([SRVRECTYPE], [TECHID], [SRVSTAT], [priorityLevel], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[SRVSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[SVCDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[Customer_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[SVCAREA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[Notify_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[Notify_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[ETADTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[ETATME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[DISPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[DISPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[ARRIVDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[ARRIVTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[COMPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[COMPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[Response_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[Response_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[PRICELVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[LABSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[LABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[LABSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[PARSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[PARTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[PARSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[MSCSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[MISCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[MISSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[TAXEXMT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[TAXEXMT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[PRETAXTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[METER1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[METER2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[METER3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[NOTFYFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[MSTRRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[MSTRCALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[ESCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[ESCTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Escalation_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[SPLTTERMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Callback]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[PROJCTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ProjectRef1_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ProjectRef1_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ProjectRef1_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ProjectRef1_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[SVC_Contract_Line_SEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ETTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[SVC_On_Hold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Print_to_Web]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meters_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meters_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meters_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meters_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meters_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meter_Internal_Uses_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meter_Internal_Uses_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meter_Internal_Uses_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meter_Internal_Uses_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Meter_Internal_Uses_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[VIEWMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[ISMCTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00200].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORIGMISSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORIGMSCSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORIGLABSUBTOTCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORIGLABSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORIGPARSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORIGPARSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORIGPRETAXTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[ORIGTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00200].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[SVC_Pre600]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00200].[SVC_FO_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Replaces_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Replaces_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Replaces_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Replaces_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Replaces_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00200].[Workflow_Priority]'
GO
GRANT SELECT ON  [dbo].[SVC00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00200] TO [DYNGRP]
GO
