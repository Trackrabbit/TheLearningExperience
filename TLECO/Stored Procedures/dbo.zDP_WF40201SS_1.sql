SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40201SS_1] (@Workflow_Type_Name char(51), @WorkflowRoleID smallint) AS  set nocount on SELECT TOP 1  Workflow_Type_Name, WorkflowRoleID, WorkflowRole, Workflow_Role_Table, TableDictID, TablePhysicalName, FieldPhysicalName, TableRelationship, DEX_ROW_ID FROM .WF40201 WHERE Workflow_Type_Name = @Workflow_Type_Name AND WorkflowRoleID = @WorkflowRoleID ORDER BY Workflow_Type_Name ASC, WorkflowRoleID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40201SS_1] TO [DYNGRP]
GO
