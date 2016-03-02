SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40200SS_1] (@UsersListGuid char(37), @SEQUENCE1 numeric(19,5)) AS  set nocount on SELECT TOP 1  UsersListGuid, SEQUENCE1, WorkflowSelectionType, ADObjectGuid, ADDistinguishedName, ADDisplayName, ADAlias, ADDomain, ADLogin, EMail, ADType, WorkflowRoleID, WorkflowRole, WorkflowHierarchyID, WorkflowHierarchy, HierarchyLevel, DEX_ROW_ID FROM .WF40200 WHERE UsersListGuid = @UsersListGuid AND SEQUENCE1 = @SEQUENCE1 ORDER BY UsersListGuid ASC, SEQUENCE1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40200SS_1] TO [DYNGRP]
GO
