SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10002SS_1] (@WorkflowInstanceID char(37)) AS  set nocount on SELECT TOP 1  WorkflowInstanceID, Workflow_Name, WfBusObjKey, Workflow_Version, Workflow_Description, Workflow_Type_Name, FormID, DICTID, Workflow_Status, WF_SendNotificatications, Workflow_Manually_Delega, Workflow_Originator, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, TBLPHYSNM, Document_Drill_Down, NOTEINDX, BusObjKey, DEX_ROW_TS, DEX_ROW_ID, Workflow_Where_Clause FROM .WFI10002 WHERE WorkflowInstanceID = @WorkflowInstanceID ORDER BY WorkflowInstanceID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10002SS_1] TO [DYNGRP]
GO
