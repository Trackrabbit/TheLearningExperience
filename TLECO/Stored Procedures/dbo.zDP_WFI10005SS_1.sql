SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10005SS_1] (@Workflow_User char(85), @WorkflowStepInstanceID char(37), @UsersListGuid char(37), @WorkflowTaskAssignedTo char(85)) AS  set nocount on SELECT TOP 1  Workflow_User, WorkflowStepInstanceID, UsersListGuid, WorkflowTaskAssignedTo, EMail, ADDisplayName, DEX_ROW_ID FROM .WFI10005 WHERE Workflow_User = @Workflow_User AND WorkflowStepInstanceID = @WorkflowStepInstanceID AND UsersListGuid = @UsersListGuid AND WorkflowTaskAssignedTo = @WorkflowTaskAssignedTo ORDER BY Workflow_User ASC, WorkflowStepInstanceID ASC, UsersListGuid ASC, WorkflowTaskAssignedTo ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10005SS_1] TO [DYNGRP]
GO
