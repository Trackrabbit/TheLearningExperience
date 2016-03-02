CREATE TABLE [dbo].[DD20100]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DDREMAIN] [int] NOT NULL,
[INDXLONG] [int] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[SupervisorADLogin] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[uprWF_DD20100UpdateTrigger] ON [dbo].[DD20100] FOR UPDATE  AS declare   @EmpID char(15),  @Inactive smallint,  @DDREMAIN int,  @INDXLONG int,  @Error_State int,  @WorkflowInstanceID char(37),  @WorkflowStepInstanceID char(37) if update(Workflow_Status) and ((select Workflow_Status from inserted)=6 or (select Workflow_Status from inserted)=3) begin  select @EmpID = (select EMPLOYID from inserted)  select @Inactive = (select INACTIVE from DD20100 where EMPLOYID = @EmpID)  delete DD00100 where EMPLOYID = @EmpID  insert into DD00100   select EMPLOYID, INACTIVE, DDREMAIN, INDXLONG from DD20100 where EMPLOYID = @EmpID  delete DD00200 where EMPLOYID = @EmpID  insert into DD00200  select EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS from DD20101 where EMPLOYID = @EmpID  delete DD20101 where EMPLOYID = @EmpID   select top 1 @WorkflowInstanceID = WorkflowInstanceID from WFI10002 where Workflow_Type_Name='Payroll Direct Deposit Approval' and WfBusObjKey=@EmpID   select top 1 @WorkflowStepInstanceID = WorkflowStepInstanceID from WFI10004 where WorkflowStepInstanceID in   (select WorkflowStepInstanceID from WFI10003 where WorkflowInstanceID =   (select WorkflowInstanceID from WFI10002 where Workflow_Type_Name='Payroll Direct Deposit Approval' and WfBusObjKey=@EmpID))    exec wfRecall @WorkflowInstanceID, @WorkflowStepInstanceID, 'System', '', @Error_State OUTPUT   exec wfUpdateDocument @WorkflowInstanceID,1,1 ,'','',@Error_State OUTPUT  end   
GO
ALTER TABLE [dbo].[DD20100] ADD CONSTRAINT [PKDD20100] PRIMARY KEY NONCLUSTERED  ([EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD20100].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20100].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20100].[DDREMAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20100].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20100].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD20100].[SupervisorADLogin]'
GO
GRANT SELECT ON  [dbo].[DD20100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD20100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD20100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD20100] TO [DYNGRP]
GO
