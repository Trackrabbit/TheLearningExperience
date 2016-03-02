CREATE TABLE [dbo].[CFM00200]
(
[versionMajor] [smallint] NOT NULL,
[versionMinor] [smallint] NOT NULL,
[versionBuild] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFM00200] ADD CONSTRAINT [PKCFM00200] PRIMARY KEY NONCLUSTERED  ([versionMajor], [versionMinor], [versionBuild]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00200].[versionMajor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00200].[versionMinor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00200].[versionBuild]'
GO
GRANT SELECT ON  [dbo].[CFM00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM00200] TO [DYNGRP]
GO
