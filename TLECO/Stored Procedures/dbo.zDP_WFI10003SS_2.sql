SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10003SS_2] (@WorkflowInstanceID char(37)) AS  set nocount on SELECT TOP 1  WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10003 WHERE WorkflowInstanceID = @WorkflowInstanceID ORDER BY WorkflowInstanceID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10003SS_2] TO [DYNGRP]
GO
