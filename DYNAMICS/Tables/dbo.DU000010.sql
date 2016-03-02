CREATE TABLE [dbo].[DU000010]
(
[PRODID] [smallint] NOT NULL,
[fileNumber] [smallint] NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileOSName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[versionMajor] [smallint] NOT NULL,
[versionMinor] [smallint] NOT NULL,
[versionBuild] [smallint] NOT NULL,
[conversionScript] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTION1] [smallint] NOT NULL,
[priorityLevel] [smallint] NOT NULL,
[CODENAME] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DU000010] ADD CONSTRAINT [PKDU000010] PRIMARY KEY NONCLUSTERED  ([PRODID], [fileNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3DU000010] ON [dbo].[DU000010] ([PRODID], [priorityLevel], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4DU000010] ON [dbo].[DU000010] ([PRODID], [priorityLevel], [versionMajor], [versionMinor], [versionBuild], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2DU000010] ON [dbo].[DU000010] ([PRODID], [versionMajor], [versionMinor], [versionBuild], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5DU000010] ON [dbo].[DU000010] ([PRODID], [versionMajor], [versionMinor], [versionBuild], [priorityLevel], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000010].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000010].[fileNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DU000010].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DU000010].[fileOSName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000010].[versionMajor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000010].[versionMinor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000010].[versionBuild]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DU000010].[conversionScript]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000010].[ACTION1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000010].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DU000010].[CODENAME]'
GO
GRANT SELECT ON  [dbo].[DU000010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DU000010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DU000010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DU000010] TO [DYNGRP]
GO
