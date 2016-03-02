SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10005SS_2] (@Workflow_User char(85), @WorkflowStepInstanceID char(37), @UsersListGuid char(37)) AS  set nocount on SELECT TOP 1  Workflow_User, WorkflowStepInstanceID, UsersListGuid, WorkflowTaskAssignedTo, EMail, ADDisplayName, DEX_ROW_ID FROM .WFI10005 WHERE Workflow_User = @Workflow_User AND WorkflowStepInstanceID = @WorkflowStepInstanceID AND UsersListGuid = @UsersListGuid ORDER BY Workflow_User ASC, WorkflowStepInstanceID ASC, UsersListGuid ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10005SS_2] TO [DYNGRP]
GO
