SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40200L_1] (@UsersListGuid_RS char(37), @SEQUENCE1_RS numeric(19,5), @UsersListGuid_RE char(37), @SEQUENCE1_RE numeric(19,5)) AS  set nocount on IF @UsersListGuid_RS IS NULL BEGIN SELECT TOP 25  UsersListGuid, SEQUENCE1, WorkflowSelectionType, ADObjectGuid, ADDistinguishedName, ADDisplayName, ADAlias, ADDomain, ADLogin, EMail, ADType, WorkflowRoleID, WorkflowRole, WorkflowHierarchyID, WorkflowHierarchy, HierarchyLevel, DEX_ROW_ID FROM .WF40200 ORDER BY UsersListGuid DESC, SEQUENCE1 DESC END ELSE IF @UsersListGuid_RS = @UsersListGuid_RE BEGIN SELECT TOP 25  UsersListGuid, SEQUENCE1, WorkflowSelectionType, ADObjectGuid, ADDistinguishedName, ADDisplayName, ADAlias, ADDomain, ADLogin, EMail, ADType, WorkflowRoleID, WorkflowRole, WorkflowHierarchyID, WorkflowHierarchy, HierarchyLevel, DEX_ROW_ID FROM .WF40200 WHERE UsersListGuid = @UsersListGuid_RS AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY UsersListGuid DESC, SEQUENCE1 DESC END ELSE BEGIN SELECT TOP 25  UsersListGuid, SEQUENCE1, WorkflowSelectionType, ADObjectGuid, ADDistinguishedName, ADDisplayName, ADAlias, ADDomain, ADLogin, EMail, ADType, WorkflowRoleID, WorkflowRole, WorkflowHierarchyID, WorkflowHierarchy, HierarchyLevel, DEX_ROW_ID FROM .WF40200 WHERE UsersListGuid BETWEEN @UsersListGuid_RS AND @UsersListGuid_RE AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY UsersListGuid DESC, SEQUENCE1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40200L_1] TO [DYNGRP]
GO
