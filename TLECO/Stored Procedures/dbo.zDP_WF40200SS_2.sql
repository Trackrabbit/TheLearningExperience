SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40200SS_2] (@ADLogin char(85), @ADType smallint, @SEQUENCE1 numeric(19,5), @WorkflowRoleID smallint, @WorkflowHierarchyID smallint) AS  set nocount on SELECT TOP 1  UsersListGuid, SEQUENCE1, WorkflowSelectionType, ADObjectGuid, ADDistinguishedName, ADDisplayName, ADAlias, ADDomain, ADLogin, EMail, ADType, WorkflowRoleID, WorkflowRole, WorkflowHierarchyID, WorkflowHierarchy, HierarchyLevel, DEX_ROW_ID FROM .WF40200 WHERE ADLogin = @ADLogin AND ADType = @ADType AND SEQUENCE1 = @SEQUENCE1 AND WorkflowRoleID = @WorkflowRoleID AND WorkflowHierarchyID = @WorkflowHierarchyID ORDER BY ADLogin ASC, ADType ASC, SEQUENCE1 ASC, WorkflowRoleID ASC, WorkflowHierarchyID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40200SS_2] TO [DYNGRP]
GO
