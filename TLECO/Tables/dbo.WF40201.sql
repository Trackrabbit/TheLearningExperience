CREATE TABLE [dbo].[WF40201]
(
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowRoleID] [smallint] NOT NULL,
[WorkflowRole] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Role_Table] [smallint] NOT NULL,
[TableDictID] [smallint] NOT NULL,
[TablePhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldPhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TableRelationship] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF40201] ADD CONSTRAINT [PKWF40201] PRIMARY KEY NONCLUSTERED  ([Workflow_Type_Name], [WorkflowRoleID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40201].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40201].[WorkflowRoleID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40201].[WorkflowRole]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40201].[Workflow_Role_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40201].[TableDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40201].[TablePhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40201].[FieldPhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40201].[TableRelationship]'
GO
GRANT SELECT ON  [dbo].[WF40201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF40201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF40201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF40201] TO [DYNGRP]
GO
