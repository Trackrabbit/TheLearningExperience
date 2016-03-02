SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF100002SS_1] (@Workflow_Name char(51), @Workflow_Version int) AS  set nocount on SELECT TOP 1  Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WF100002 WHERE Workflow_Name = @Workflow_Name AND Workflow_Version = @Workflow_Version ORDER BY Workflow_Name ASC, Workflow_Version ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100002SS_1] TO [DYNGRP]
GO
