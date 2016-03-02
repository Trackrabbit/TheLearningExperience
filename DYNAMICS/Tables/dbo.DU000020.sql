CREATE TABLE [dbo].[DU000020]
(
[companyID] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[versionMajor] [smallint] NOT NULL,
[versionMinor] [smallint] NOT NULL,
[versionBuild] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DU000020] ADD CONSTRAINT [PKDU000020] PRIMARY KEY NONCLUSTERED  ([companyID], [PRODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000020].[companyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000020].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000020].[versionMajor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000020].[versionMinor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000020].[versionBuild]'
GO
GRANT SELECT ON  [dbo].[DU000020] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DU000020] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DU000020] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DU000020] TO [DYNGRP]
GO
