SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF100002F_3] (@ACTIVE_RS tinyint, @Workflow_Type_Name_RS char(51), @ACTIVE_RE tinyint, @Workflow_Type_Name_RE char(51)) AS  set nocount on IF @ACTIVE_RS IS NULL BEGIN SELECT TOP 25  Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WF100002 ORDER BY ACTIVE ASC, Workflow_Type_Name ASC, DEX_ROW_ID ASC END ELSE IF @ACTIVE_RS = @ACTIVE_RE BEGIN SELECT TOP 25  Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WF100002 WHERE ACTIVE = @ACTIVE_RS AND Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE ORDER BY ACTIVE ASC, Workflow_Type_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WF100002 WHERE ACTIVE BETWEEN @ACTIVE_RS AND @ACTIVE_RE AND Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE ORDER BY ACTIVE ASC, Workflow_Type_Name ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100002F_3] TO [DYNGRP]
GO
