SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10003F_3] (@Workflow_Name_RS char(51), @Workflow_Version_RS int, @Workflow_Step_Name_RS char(51), @Workflow_Name_RE char(51), @Workflow_Version_RE int, @Workflow_Step_Name_RE char(51)) AS  set nocount on IF @Workflow_Name_RS IS NULL BEGIN SELECT TOP 25  WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10003 ORDER BY Workflow_Name ASC, Workflow_Version ASC, Workflow_Step_Name ASC, DEX_ROW_ID ASC END ELSE IF @Workflow_Name_RS = @Workflow_Name_RE BEGIN SELECT TOP 25  WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10003 WHERE Workflow_Name = @Workflow_Name_RS AND Workflow_Version BETWEEN @Workflow_Version_RS AND @Workflow_Version_RE AND Workflow_Step_Name BETWEEN @Workflow_Step_Name_RS AND @Workflow_Step_Name_RE ORDER BY Workflow_Name ASC, Workflow_Version ASC, Workflow_Step_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10003 WHERE Workflow_Name BETWEEN @Workflow_Name_RS AND @Workflow_Name_RE AND Workflow_Version BETWEEN @Workflow_Version_RS AND @Workflow_Version_RE AND Workflow_Step_Name BETWEEN @Workflow_Step_Name_RS AND @Workflow_Step_Name_RE ORDER BY Workflow_Name ASC, Workflow_Version ASC, Workflow_Step_Name ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10003F_3] TO [DYNGRP]
GO
