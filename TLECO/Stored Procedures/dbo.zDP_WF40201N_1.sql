SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40201N_1] (@BS int, @Workflow_Type_Name char(51), @WorkflowRoleID smallint, @Workflow_Type_Name_RS char(51), @WorkflowRoleID_RS smallint, @Workflow_Type_Name_RE char(51), @WorkflowRoleID_RE smallint) AS  set nocount on IF @Workflow_Type_Name_RS IS NULL BEGIN SELECT TOP 25  Workflow_Type_Name, WorkflowRoleID, WorkflowRole, Workflow_Role_Table, TableDictID, TablePhysicalName, FieldPhysicalName, TableRelationship, DEX_ROW_ID FROM .WF40201 WHERE ( Workflow_Type_Name = @Workflow_Type_Name AND WorkflowRoleID > @WorkflowRoleID OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, WorkflowRoleID ASC END ELSE IF @Workflow_Type_Name_RS = @Workflow_Type_Name_RE BEGIN SELECT TOP 25  Workflow_Type_Name, WorkflowRoleID, WorkflowRole, Workflow_Role_Table, TableDictID, TablePhysicalName, FieldPhysicalName, TableRelationship, DEX_ROW_ID FROM .WF40201 WHERE Workflow_Type_Name = @Workflow_Type_Name_RS AND WorkflowRoleID BETWEEN @WorkflowRoleID_RS AND @WorkflowRoleID_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND WorkflowRoleID > @WorkflowRoleID OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, WorkflowRoleID ASC END ELSE BEGIN SELECT TOP 25  Workflow_Type_Name, WorkflowRoleID, WorkflowRole, Workflow_Role_Table, TableDictID, TablePhysicalName, FieldPhysicalName, TableRelationship, DEX_ROW_ID FROM .WF40201 WHERE Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE AND WorkflowRoleID BETWEEN @WorkflowRoleID_RS AND @WorkflowRoleID_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND WorkflowRoleID > @WorkflowRoleID OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, WorkflowRoleID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40201N_1] TO [DYNGRP]
GO
