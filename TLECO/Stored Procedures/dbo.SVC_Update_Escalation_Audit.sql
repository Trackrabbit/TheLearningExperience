SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Update_Escalation_Audit]  (  @SRVRECTYPE   smallint,  @CALLNBR   char(15),  @When_to_run   smalldatetime,  @Task_name   varchar(100),  @Command   varchar(100),  @Comment   varchar(255),  @AgentIsOn smallint = 0,  @MultiTechAssign smallint = 0,  @ValidateCommand  varchar(100) = ''  ) As declare @When_date int,  @When_time int,  @End_time int,  @USERID char(15),  @StartDate datetime,  @EndDate datetime,  @StartTime datetime,  @EndTime datetime,  @NEWID integer,  @NewJobID varchar(34),   @ReturnCode int,  @msg varchar(255),  @retval int,  @EscStatus smallint  select  @USERID = SUSER_SNAME(),  @StartDate = convert(char(10),@When_to_run,112),  @StartTime = convert(char(10),@When_to_run,108),  @EndDate = @StartDate,  @EndTime = DATEADD(mi,2,@StartTime),  @When_date = convert(int,convert(char(10),@When_to_run,112)),  @When_time = convert(int,stuff(stuff(convert(char(10),@When_to_run,108),6,1,null),3,1,null)),  @End_time = @When_time + 2  select  @Task_name = isnull(@Task_name, ''),  @Command = rtrim(isnull(@Command, '')),  @ValidateCommand = rtrim(isnull(@ValidateCommand, '')),  @Comment = rtrim(isnull(@Comment, '')),  @MultiTechAssign = isnull(@MultiTechAssign, 0)  if @MultiTechAssign = 0 begin  if exists(select * from SVC00211 (nolock) where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR  and SVC_Escalation_Status = 1)  begin   update SVC00211 set SVC_Escalation_Status = 2  where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR and SVC_Escalation_Status = 1  and dateadd(ss, 30, convert(datetime, DATE1 + ' ' + TIME1, 101)) <= getdate()  end end  if rtrim(@ValidateCommand) <> '' begin  if exists(select 1 from SVC00211 (nolock) where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR and DATE1 = @StartDate   and SVC_Escalation_Status = 1 and substring(SVC_Command_Text, 1, len(@ValidateCommand)) = @ValidateCommand  and rtrim(SVC_Task_Comment) = @Comment)  begin  return  end end  select @USERID = IsNull(@USERID, 'SQLAgent')  set @EscStatus = 1  set @NewJobID = ''  begin try  exec SVC_Sched_Task   @When_to_run = @When_to_run,   @Task_name = @Task_name,   @Command = @Command,   @Comment = @Comment,  @AgentIsRunning = @AgentIsOn,  @NewJobID = @NewJobID OUTPUT  end try begin catch end catch;  set nocount on  if @NewJobID is not null and @NewJobID <> ''  begin   select  @Command = right(ltrim(rtrim(@Command)), 99),  @Comment = right(ltrim(rtrim(@Comment)), 99),  @Task_name = right(ltrim(rtrim(@Task_name)), 30)  if not exists(select 1 from SVC00211 where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR and SVC_Task_ID = @NewJobID)  begin  begin try  insert SVC00211  values (   @SRVRECTYPE,  @CALLNBR,  @NewJobID,  @Task_name,  @USERID,  @StartDate,  @StartTime,  @EscStatus,  @EndDate,  @EndTime,  @When_date,  @When_time,  @When_date,  @End_time,  @Command,  @Comment  )  if @@ERROR <> 0  begin  goto logError  end  end try  begin catch  end catch  end   if @MultiTechAssign = 1  begin   waitfor delay '00:00:01'  end  end set nocount off  select @Task_name = right(ltrim(rtrim(@Task_name)), 30) return  logError: return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Escalation_Audit] TO [DYNGRP]
GO
