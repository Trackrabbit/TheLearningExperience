SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF100003SS_3] (@Workflow_Name char(51), @Workflow_Version int, @WF_Step_Predecessor char(51), @Workflow_Step_Sequence int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Workflow_Step_Name, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, WFIncludeDocumentAttach, DEX_ROW_TS, DEX_ROW_ID FROM .WF100003 WHERE Workflow_Name = @Workflow_Name AND Workflow_Version = @Workflow_Version AND WF_Step_Predecessor = @WF_Step_Predecessor AND Workflow_Step_Sequence = @Workflow_Step_Sequence ORDER BY Workflow_Name ASC, Workflow_Version ASC, WF_Step_Predecessor ASC, Workflow_Step_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100003SS_3] TO [DYNGRP]
GO
