SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10003SS_4] (@Workflow_Name char(51), @Workflow_Version int, @Workflow_Step_Name char(51), @Workflow_Step_Status smallint, @Workflow_Step_Sequence int, @Workflow_Step_Type smallint, @Workflow_Step_Order smallint, @WF_Step_Predecessor char(51)) AS  set nocount on SELECT TOP 1  WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WFI10003 WHERE Workflow_Name = @Workflow_Name AND Workflow_Version = @Workflow_Version AND Workflow_Step_Name = @Workflow_Step_Name AND Workflow_Step_Status = @Workflow_Step_Status AND Workflow_Step_Sequence = @Workflow_Step_Sequence AND Workflow_Step_Type = @Workflow_Step_Type AND Workflow_Step_Order = @Workflow_Step_Order AND WF_Step_Predecessor = @WF_Step_Predecessor ORDER BY Workflow_Name ASC, Workflow_Version ASC, Workflow_Step_Name ASC, Workflow_Step_Status ASC, Workflow_Step_Sequence ASC, Workflow_Step_Type ASC, Workflow_Step_Order ASC, WF_Step_Predecessor ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10003SS_4] TO [DYNGRP]
GO
