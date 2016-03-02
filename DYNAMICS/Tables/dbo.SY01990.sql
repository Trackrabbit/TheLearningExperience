CREATE TABLE [dbo].[SY01990]
(
[ScbGroupType] [smallint] NOT NULL,
[ScbOwnerID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbNodeID] [smallint] NOT NULL,
[ScbParentNodeID] [smallint] NOT NULL,
[ScbShortcutType] [smallint] NOT NULL,
[ScbSubType] [smallint] NOT NULL,
[ScbDisplayName] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbShortcutKey] [smallint] NOT NULL,
[ScbTargetStringOne] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbTargetStringTwo] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbTargetStringThree] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbTargetLongOne] [int] NOT NULL,
[ScbTargetLongTwo] [int] NOT NULL,
[ScbTargetLongThree] [int] NOT NULL,
[ScbTargetLongFour] [int] NOT NULL,
[ScbTargetLongFive] [int] NOT NULL,
[ScbCompanyID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01990] ADD CONSTRAINT [PKSY01990] PRIMARY KEY NONCLUSTERED  ([ScbGroupType], [ScbOwnerID], [ScbNodeID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbGroupType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01990].[ScbOwnerID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbNodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbParentNodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbShortcutType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbSubType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01990].[ScbDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbShortcutKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01990].[ScbTargetStringOne]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01990].[ScbTargetStringTwo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01990].[ScbTargetStringThree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbTargetLongOne]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbTargetLongTwo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbTargetLongThree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbTargetLongFour]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbTargetLongFive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01990].[ScbCompanyID]'
GO
GRANT SELECT ON  [dbo].[SY01990] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01990] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01990] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01990] TO [DYNGRP]
GO
