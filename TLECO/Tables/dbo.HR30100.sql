CREATE TABLE [dbo].[HR30100]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[Flags] [smallint] NOT NULL,
[SupervisorADLogin] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[hrWF_HR30100UpdateTrigger] ON [dbo].[HR30100] FOR UPDATE  AS declare   @EmpID char(15),  @Flags int,  @Education smallint,  @Tests smallint,  @Error_State int,  @WorkflowInstanceID char(37),  @WorkflowStepInstanceID char(37),  @CreateDate datetime,  @CreateTime time(0),  @DateStr varchar(10)  if update(Workflow_Status) and ((select Workflow_Status from inserted)=6 or (select Workflow_Status from inserted)=3) begin  select @EmpID =EMPLOYID, @Flags=Flags , @CreateDate = CREATDDT, @CreateTime = CREATETIME from inserted   Select @Education = Power(2, (1-1))   Select @Tests = Power(2,(2-1))   if (@Flags & @Education) = @Education  begin  delete UPR00112 where EMPLOYID = @EmpID  insert into UPR00112   select EMPLOYID, SEQNUMBR, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR,0,0,'WFUSER',CONVERT(DATE,GETDATE())  from HR30101 where EMPLOYID = @EmpID  delete HR30101 where EMPLOYID = @EmpID  end  else  delete HR30101 where EMPLOYID = @EmpID  if (@Flags & @Tests) = @Tests  begin  delete HRTST022 where EMPID_I = @EmpID  insert into HRTST022  select EMPLOYID, SEQNUMBR, TESTCODE_I, DATE1, TESTSCORE_I, 0.00000, 'WFUSER', CONVERT(DATE,GETDATE()), EXPNDATE from HR30102 where EMPLOYID = @EmpID  delete HR30102 where EMPLOYID = @EmpID  end  else  delete HR30102 where EMPLOYID = @EmpID   set @DateStr = CONVERT(varchar(10),DATEPART(year,@CreateDate))+'/'+CONVERT(varchar(10),DATEPART(Month,@CreateDate))+'/'+CONVERT(varchar(10),DATEPART(day,@CreateDate))  select top 1 @WorkflowInstanceID = WorkflowInstanceID from WFI10002 where Workflow_Type_Name='Employee Skills Approval' and WfBusObjKey=LTRIM(RTRIM(@EmpID))+'~'+@DateStr+'~'+CONVERT(VARCHAR(8),@CreateTime,108)   select top 1 @WorkflowStepInstanceID = WorkflowStepInstanceID from WFI10004 where WorkflowStepInstanceID in (select WorkflowStepInstanceID from WFI10003 where WorkflowInstanceID = (select WorkflowInstanceID from WFI10002 where Workflow_Type_Name='Employee Skills Approval' and WfBusObjKey=LTRIM(RTRIM(@EmpID))+'~'+@DateStr+'~'+CONVERT(VARCHAR(8),@CreateTime,108)))    exec wfRecall @WorkflowInstanceID, @WorkflowStepInstanceID, 'System', '', @Error_State OUTPUT  exec wfUpdateDocument @WorkflowInstanceID,1,1 ,'','',@Error_State OUTPUT  UPDATE HR30100 set Flags = 0 where EMPLOYID = @EmpID  end   
GO
ALTER TABLE [dbo].[HR30100] ADD CONSTRAINT [CK__HR30100__CREATET__723D2B50] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[HR30100] ADD CONSTRAINT [CK__HR30100__CREATDD__71490717] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[HR30100] ADD CONSTRAINT [PKHR30100] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [CREATDDT], [CREATETIME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR30100].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR30100].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR30100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR30100].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR30100].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR30100].[SupervisorADLogin]'
GO
GRANT SELECT ON  [dbo].[HR30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR30100] TO [DYNGRP]
GO
