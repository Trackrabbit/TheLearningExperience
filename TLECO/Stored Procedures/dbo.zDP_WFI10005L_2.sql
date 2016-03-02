SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10005L_2] (@Workflow_User_RS char(85), @WorkflowStepInstanceID_RS char(37), @UsersListGuid_RS char(37), @Workflow_User_RE char(85), @WorkflowStepInstanceID_RE char(37), @UsersListGuid_RE char(37)) AS  set nocount on IF @Workflow_User_RS IS NULL BEGIN SELECT TOP 25  Workflow_User, WorkflowStepInstanceID, UsersListGuid, WorkflowTaskAssignedTo, EMail, ADDisplayName, DEX_ROW_ID FROM .WFI10005 ORDER BY Workflow_User DESC, WorkflowStepInstanceID DESC, UsersListGuid DESC, DEX_ROW_ID DESC END ELSE IF @Workflow_User_RS = @Workflow_User_RE BEGIN SELECT TOP 25  Workflow_User, WorkflowStepInstanceID, UsersListGuid, WorkflowTaskAssignedTo, EMail, ADDisplayName, DEX_ROW_ID FROM .WFI10005 WHERE Workflow_User = @Workflow_User_RS AND WorkflowStepInstanceID BETWEEN @WorkflowStepInstanceID_RS AND @WorkflowStepInstanceID_RE AND UsersListGuid BETWEEN @UsersListGuid_RS AND @UsersListGuid_RE ORDER BY Workflow_User DESC, WorkflowStepInstanceID DESC, UsersListGuid DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Workflow_User, WorkflowStepInstanceID, UsersListGuid, WorkflowTaskAssignedTo, EMail, ADDisplayName, DEX_ROW_ID FROM .WFI10005 WHERE Workflow_User BETWEEN @Workflow_User_RS AND @Workflow_User_RE AND WorkflowStepInstanceID BETWEEN @WorkflowStepInstanceID_RS AND @WorkflowStepInstanceID_RE AND UsersListGuid BETWEEN @UsersListGuid_RS AND @UsersListGuid_RE ORDER BY Workflow_User DESC, WorkflowStepInstanceID DESC, UsersListGuid DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10005L_2] TO [DYNGRP]
GO
