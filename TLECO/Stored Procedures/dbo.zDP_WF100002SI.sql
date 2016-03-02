SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF100002SI] (@Workflow_Name char(51), @Workflow_Version int, @Workflow_Description char(101), @Workflow_Type_Name char(51), @ACTIVE tinyint, @WF_SendNotificatications tinyint, @Workflow_Manually_Delega tinyint, @WF_AllowOrigApprover tinyint, @Workflow_Require_One_App tinyint, @WF_Use_Alt_Final_Approv tinyint, @WF_Alt_FinalApprover char(37), @WF_Overdue_Task_Action smallint, @Workflow_Delegate_To char(37), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF100002 (Workflow_Name, Workflow_Version, Workflow_Description, Workflow_Type_Name, ACTIVE, WF_SendNotificatications, Workflow_Manually_Delega, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, NOTEINDX) VALUES ( @Workflow_Name, @Workflow_Version, @Workflow_Description, @Workflow_Type_Name, @ACTIVE, @WF_SendNotificatications, @Workflow_Manually_Delega, @WF_AllowOrigApprover, @Workflow_Require_One_App, @WF_Use_Alt_Final_Approv, @WF_Alt_FinalApprover, @WF_Overdue_Task_Action, @Workflow_Delegate_To, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100002SI] TO [DYNGRP]
GO
