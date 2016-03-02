SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfScanForOverdueTasks] as begin  set NOCOUNT ON  declare @WorkflowStepInstanceID char(37), @Workflow_Error int declare OVERDUE_TASKS cursor local fast_forward for select distinct WorkflowStepInstanceID from WFI10004   where (cast(Workflow_Due_Date as date) <cast(SYSDATETIME() as date)  or  (cast(Workflow_Due_Date as date)=cast(SYSDATETIME() as date)   and cast(Workflow_Due_Time as time)<cast(SYSDATETIME() as time)))  and Workflow_Action_Date='' and Workflow_Task_Escalated=0 open OVERDUE_TASKS fetch next from OVERDUE_TASKS into @WorkflowStepInstanceID while @@FETCH_STATUS=0  begin  exec wfEscalate @WorkflowStepInstanceID, @Workflow_Error OUTPUT  fetch next from OVERDUE_TASKS into @WorkflowStepInstanceID end close OVERDUE_TASKS deallocate OVERDUE_TASKS  END   
GO
GRANT EXECUTE ON  [dbo].[wfScanForOverdueTasks] TO [DYNGRP]
GO
