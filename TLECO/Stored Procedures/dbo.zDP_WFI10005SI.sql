SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10005SI] (@Workflow_User char(85), @WorkflowStepInstanceID char(37), @UsersListGuid char(37), @WorkflowTaskAssignedTo char(85), @EMail char(255), @ADDisplayName char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WFI10005 (Workflow_User, WorkflowStepInstanceID, UsersListGuid, WorkflowTaskAssignedTo, EMail, ADDisplayName) VALUES ( @Workflow_User, @WorkflowStepInstanceID, @UsersListGuid, @WorkflowTaskAssignedTo, @EMail, @ADDisplayName) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10005SI] TO [DYNGRP]
GO
