CREATE TABLE [dbo].[WFI10005]
(
[Workflow_User] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowStepInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UsersListGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowTaskAssignedTo] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDisplayName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WFI10005] ADD CONSTRAINT [PKWFI10005] PRIMARY KEY NONCLUSTERED  ([Workflow_User], [WorkflowStepInstanceID], [UsersListGuid], [WorkflowTaskAssignedTo]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WFI10005] ON [dbo].[WFI10005] ([Workflow_User], [WorkflowStepInstanceID], [UsersListGuid], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10005].[Workflow_User]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10005].[WorkflowStepInstanceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10005].[UsersListGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10005].[WorkflowTaskAssignedTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10005].[EMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10005].[ADDisplayName]'
GO
GRANT SELECT ON  [dbo].[WFI10005] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WFI10005] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WFI10005] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WFI10005] TO [DYNGRP]
GO
