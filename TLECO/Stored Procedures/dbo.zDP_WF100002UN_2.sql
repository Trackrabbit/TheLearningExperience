SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF100002UN_2] (@BS int, @Workflow_Type_Name char(51), @Workflow_Name char(51), @Workflow_Type_Name_RS char(51), @Workflow_Name_RS char(51), @Workflow_Type_Name_RE char(51), @Workflow_Name_RE char(51)) AS  set nocount on IF @Workflow_Type_Name_RS IS NULL BEGIN SELECT TOP 25  Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WF100002 WHERE ( Workflow_Type_Name = @Workflow_Type_Name AND Workflow_Name > @Workflow_Name OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, Workflow_Name ASC, DEX_ROW_ID ASC END ELSE IF @Workflow_Type_Name_RS = @Workflow_Type_Name_RE BEGIN SELECT TOP 25  Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WF100002 WHERE Workflow_Type_Name = @Workflow_Type_Name_RS AND Workflow_Name BETWEEN @Workflow_Name_RS AND @Workflow_Name_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND Workflow_Name > @Workflow_Name OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, Workflow_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WF100002 WHERE Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE AND Workflow_Name BETWEEN @Workflow_Name_RS AND @Workflow_Name_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND Workflow_Name > @Workflow_Name OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, Workflow_Name ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100002UN_2] TO [DYNGRP]
GO
