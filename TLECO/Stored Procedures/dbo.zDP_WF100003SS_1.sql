SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF100003SS_1] (@Workflow_Step_Name char(51), @Workflow_Name char(51), @Workflow_Version int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Workflow_Step_Name, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, WFIncludeDocumentAttach, DEX_ROW_TS, DEX_ROW_ID FROM .WF100003 WHERE Workflow_Step_Name = @Workflow_Step_Name AND Workflow_Name = @Workflow_Name AND Workflow_Version = @Workflow_Version ORDER BY Workflow_Step_Name ASC, Workflow_Name ASC, Workflow_Version ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100003SS_1] TO [DYNGRP]
GO
