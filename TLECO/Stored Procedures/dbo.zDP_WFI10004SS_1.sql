SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10004SS_1] (@WorkflowInstanceID char(37), @WorkflowStepInstanceID char(37), @WorkflowTaskAssignedTo char(85)) AS  set nocount on SELECT TOP 1  WorkflowInstanceID, WorkflowStepInstanceID, WorkflowTaskAssignedTo, Workflow_Step_Name, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Action_Date, Workflow_Action_Time, Workflow_Due_Date, Workflow_Due_Time, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, WF_Step_Predecessor, WF_Step_Completion_Polic, Workflow_Task_Escalated, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10004 WHERE WorkflowInstanceID = @WorkflowInstanceID AND WorkflowStepInstanceID = @WorkflowStepInstanceID AND WorkflowTaskAssignedTo = @WorkflowTaskAssignedTo ORDER BY WorkflowInstanceID ASC, WorkflowStepInstanceID ASC, WorkflowTaskAssignedTo ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10004SS_1] TO [DYNGRP]
GO
