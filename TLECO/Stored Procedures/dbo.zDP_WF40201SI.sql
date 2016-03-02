SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40201SI] (@Workflow_Type_Name char(51), @WorkflowRoleID smallint, @WorkflowRole char(51), @Workflow_Role_Table smallint, @TableDictID smallint, @TablePhysicalName char(31), @FieldPhysicalName char(31), @TableRelationship smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF40201 (Workflow_Type_Name, WorkflowRoleID, WorkflowRole, Workflow_Role_Table, TableDictID, TablePhysicalName, FieldPhysicalName, TableRelationship) VALUES ( @Workflow_Type_Name, @WorkflowRoleID, @WorkflowRole, @Workflow_Role_Table, @TableDictID, @TablePhysicalName, @FieldPhysicalName, @TableRelationship) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40201SI] TO [DYNGRP]
GO
