CREATE TABLE [dbo].[WF40500]
(
[UsersListGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DomainUserName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDisplayName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WF_Auto_Delegate_Tasks] [tinyint] NOT NULL,
[Workflow_Select_Delegate] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF40500] ADD CONSTRAINT [PKWF40500] PRIMARY KEY NONCLUSTERED  ([UsersListGuid]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40500].[UsersListGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40500].[DomainUserName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40500].[ADDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40500].[WF_Auto_Delegate_Tasks]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40500].[Workflow_Select_Delegate]'
GO
GRANT SELECT ON  [dbo].[WF40500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF40500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF40500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF40500] TO [DYNGRP]
GO
