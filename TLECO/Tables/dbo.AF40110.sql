CREATE TABLE [dbo].[AF40110]
(
[USERNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHGRDFLG] [tinyint] NOT NULL,
[SHCGRFLG] [tinyint] NOT NULL,
[SHTBARFL] [tinyint] NOT NULL,
[SCDEFAFL] [tinyint] NOT NULL,
[SHRWARFL] [tinyint] NOT NULL,
[SHOFMKFL] [tinyint] NOT NULL,
[SNPTGRFL] [tinyint] NOT NULL,
[SHMARFLG] [tinyint] NOT NULL,
[SHPGBDFL] [tinyint] NOT NULL,
[SHRLRSFL] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF40110] ADD CONSTRAINT [PKAF40110] PRIMARY KEY NONCLUSTERED  ([USERNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40110].[USERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SHGRDFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SHCGRFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SHTBARFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SCDEFAFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SHRWARFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SHOFMKFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SNPTGRFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SHMARFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SHPGBDFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40110].[SHRLRSFL]'
GO
GRANT SELECT ON  [dbo].[AF40110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF40110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF40110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF40110] TO [DYNGRP]
GO
