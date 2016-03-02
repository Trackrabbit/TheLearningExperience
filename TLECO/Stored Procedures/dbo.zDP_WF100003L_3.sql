SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF100003L_3] (@Workflow_Name_RS char(51), @Workflow_Version_RS int, @WF_Step_Predecessor_RS char(51), @Workflow_Step_Sequence_RS int, @Workflow_Name_RE char(51), @Workflow_Version_RE int, @WF_Step_Predecessor_RE char(51), @Workflow_Step_Sequence_RE int) AS /* 14.00.0084.000 */ set nocount on IF @Workflow_Name_RS IS NULL BEGIN SELECT TOP 25  Workflow_Step_Name, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, WFIncludeDocumentAttach, DEX_ROW_TS, DEX_ROW_ID FROM .WF100003 ORDER BY Workflow_Name DESC, Workflow_Version DESC, WF_Step_Predecessor DESC, Workflow_Step_Sequence DESC END ELSE IF @Workflow_Name_RS = @Workflow_Name_RE BEGIN SELECT TOP 25  Workflow_Step_Name, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, WFIncludeDocumentAttach, DEX_ROW_TS, DEX_ROW_ID FROM .WF100003 WHERE Workflow_Name = @Workflow_Name_RS AND Workflow_Version BETWEEN @Workflow_Version_RS AND @Workflow_Version_RE AND WF_Step_Predecessor BETWEEN @WF_Step_Predecessor_RS AND @WF_Step_Predecessor_RE AND Workflow_Step_Sequence BETWEEN @Workflow_Step_Sequence_RS AND @Workflow_Step_Sequence_RE ORDER BY Workflow_Name DESC, Workflow_Version DESC, WF_Step_Predecessor DESC, Workflow_Step_Sequence DESC END ELSE BEGIN SELECT TOP 25  Workflow_Step_Name, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX, WFIncludeDocumentAttach, DEX_ROW_TS, DEX_ROW_ID FROM .WF100003 WHERE Workflow_Name BETWEEN @Workflow_Name_RS AND @Workflow_Name_RE AND Workflow_Version BETWEEN @Workflow_Version_RS AND @Workflow_Version_RE AND WF_Step_Predecessor BETWEEN @WF_Step_Predecessor_RS AND @WF_Step_Predecessor_RE AND Workflow_Step_Sequence BETWEEN @Workflow_Step_Sequence_RS AND @Workflow_Step_Sequence_RE ORDER BY Workflow_Name DESC, Workflow_Version DESC, WF_Step_Predecessor DESC, Workflow_Step_Sequence DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100003L_3] TO [DYNGRP]
GO