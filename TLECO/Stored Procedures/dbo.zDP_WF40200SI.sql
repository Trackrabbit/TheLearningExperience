SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40200SI] (@UsersListGuid char(37), @SEQUENCE1 numeric(19,5), @WorkflowSelectionType smallint, @ADObjectGuid char(37), @ADDistinguishedName char(255), @ADDisplayName char(255), @ADAlias char(21), @ADDomain char(65), @ADLogin char(85), @EMail char(255), @ADType smallint, @WorkflowRoleID smallint, @WorkflowRole char(51), @WorkflowHierarchyID smallint, @WorkflowHierarchy char(51), @HierarchyLevel smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF40200 (UsersListGuid, SEQUENCE1, WorkflowSelectionType, ADObjectGuid, ADDistinguishedName, ADDisplayName, ADAlias, ADDomain, ADLogin, EMail, ADType, WorkflowRoleID, WorkflowRole, WorkflowHierarchyID, WorkflowHierarchy, HierarchyLevel) VALUES ( @UsersListGuid, @SEQUENCE1, @WorkflowSelectionType, @ADObjectGuid, @ADDistinguishedName, @ADDisplayName, @ADAlias, @ADDomain, @ADLogin, @EMail, @ADType, @WorkflowRoleID, @WorkflowRole, @WorkflowHierarchyID, @WorkflowHierarchy, @HierarchyLevel) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40200SI] TO [DYNGRP]
GO
