SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10003F_1] (@WorkflowStepInstanceID_RS char(37), @WorkflowStepInstanceID_RE char(37)) AS  set nocount on IF @WorkflowStepInstanceID_RS IS NULL BEGIN SELECT TOP 25  WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10003 ORDER BY WorkflowStepInstanceID ASC END ELSE IF @WorkflowStepInstanceID_RS = @WorkflowStepInstanceID_RE BEGIN SELECT TOP 25  WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10003 WHERE WorkflowStepInstanceID = @WorkflowStepInstanceID_RS ORDER BY WorkflowStepInstanceID ASC END ELSE BEGIN SELECT TOP 25  WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10003 WHERE WorkflowStepInstanceID BETWEEN @WorkflowStepInstanceID_RS AND @WorkflowStepInstanceID_RE ORDER BY WorkflowStepInstanceID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10003F_1] TO [DYNGRP]
GO