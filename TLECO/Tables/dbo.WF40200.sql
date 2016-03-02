CREATE TABLE [dbo].[WF40200]
(
[UsersListGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[WorkflowSelectionType] [smallint] NOT NULL,
[ADObjectGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDistinguishedName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDisplayName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADAlias] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDomain] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADLogin] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADType] [smallint] NOT NULL,
[WorkflowRoleID] [smallint] NOT NULL,
[WorkflowRole] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowHierarchyID] [smallint] NOT NULL,
[WorkflowHierarchy] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HierarchyLevel] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF40200] ADD CONSTRAINT [PKWF40200] PRIMARY KEY NONCLUSTERED  ([UsersListGuid], [SEQUENCE1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WF40200] ON [dbo].[WF40200] ([ADLogin], [ADType], [SEQUENCE1], [WorkflowRoleID], [WorkflowHierarchyID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[UsersListGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[WF40200].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40200].[WorkflowSelectionType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[ADObjectGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[ADDistinguishedName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[ADDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[ADAlias]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[ADDomain]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[ADLogin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[EMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40200].[ADType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40200].[WorkflowRoleID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[WorkflowRole]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40200].[WorkflowHierarchyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40200].[WorkflowHierarchy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40200].[HierarchyLevel]'
GO
GRANT SELECT ON  [dbo].[WF40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF40200] TO [DYNGRP]
GO
