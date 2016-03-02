CREATE TABLE [dbo].[PATH]
(
[versionBuild] [smallint] NOT NULL,
[versionMajor] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PATH] ADD CONSTRAINT [PKPATH] PRIMARY KEY NONCLUSTERED  ([versionBuild]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PATH].[versionBuild]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PATH].[versionMajor]'
GO
GRANT SELECT ON  [dbo].[PATH] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PATH] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PATH] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PATH] TO [DYNGRP]
GO
