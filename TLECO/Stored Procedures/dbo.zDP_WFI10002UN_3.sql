SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10002UN_3] (@BS int, @Workflow_Type_Name char(51), @WfBusObjKey char(201), @Workflow_Type_Name_RS char(51), @WfBusObjKey_RS char(201), @Workflow_Type_Name_RE char(51), @WfBusObjKey_RE char(201)) AS  set nocount on IF @Workflow_Type_Name_RS IS NULL BEGIN SELECT TOP 25  WorkflowInstanceID, Workflow_Name, WfBusObjKey, Workflow_Version, Workflow_Description, Workflow_Type_Name, FormID, DICTID, Workflow_Status, WF_SendNotificatications, Workflow_Manually_Delega, Workflow_Originator, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, TBLPHYSNM, Document_Drill_Down, NOTEINDX, BusObjKey, DEX_ROW_TS, DEX_ROW_ID, Workflow_Where_Clause FROM .WFI10002 WHERE ( Workflow_Type_Name = @Workflow_Type_Name AND WfBusObjKey > @WfBusObjKey OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, WfBusObjKey ASC, DEX_ROW_ID ASC END ELSE IF @Workflow_Type_Name_RS = @Workflow_Type_Name_RE BEGIN SELECT TOP 25  WorkflowInstanceID, Workflow_Name, WfBusObjKey, Workflow_Version, Workflow_Description, Workflow_Type_Name, FormID, DICTID, Workflow_Status, WF_SendNotificatications, Workflow_Manually_Delega, Workflow_Originator, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, TBLPHYSNM, Document_Drill_Down, NOTEINDX, BusObjKey, DEX_ROW_TS, DEX_ROW_ID, Workflow_Where_Clause FROM .WFI10002 WHERE Workflow_Type_Name = @Workflow_Type_Name_RS AND WfBusObjKey BETWEEN @WfBusObjKey_RS AND @WfBusObjKey_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND WfBusObjKey > @WfBusObjKey OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, WfBusObjKey ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WorkflowInstanceID, Workflow_Name, WfBusObjKey, Workflow_Version, Workflow_Description, Workflow_Type_Name, FormID, DICTID, Workflow_Status, WF_SendNotificatications, Workflow_Manually_Delega, Workflow_Originator, WF_AllowOrigApprover, Workflow_Require_One_App, WF_Use_Alt_Final_Approv, WF_Alt_FinalApprover, WF_Overdue_Task_Action, Workflow_Delegate_To, TBLPHYSNM, Document_Drill_Down, NOTEINDX, BusObjKey, DEX_ROW_TS, DEX_ROW_ID, Workflow_Where_Clause FROM .WFI10002 WHERE Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE AND WfBusObjKey BETWEEN @WfBusObjKey_RS AND @WfBusObjKey_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND WfBusObjKey > @WfBusObjKey OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, WfBusObjKey ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10002UN_3] TO [DYNGRP]
GO
