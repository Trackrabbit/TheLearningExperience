SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF100002SS_2] (@Workflow_Type_Name char(51), @Workflow_Name char(51)) AS  set nocount on SELECT TOP 1  Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .WF100002 WHERE Workflow_Type_Name = @Workflow_Type_Name AND Workflow_Name = @Workflow_Name ORDER BY Workflow_Type_Name ASC, Workflow_Name ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100002SS_2] TO [DYNGRP]
GO
