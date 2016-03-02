CREATE TABLE [dbo].[SC9101]
(
[SETUPKEY] [smallint] NOT NULL,
[SC_DOMAIN] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SC_USERNAME] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SC_PASSWORD] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SC_CONFIG] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SC9101] ADD CONSTRAINT [PKSC9101] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9101].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9101].[SC_DOMAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9101].[SC_USERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9101].[SC_PASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9101].[URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9101].[SC_CONFIG]'
GO
GRANT SELECT ON  [dbo].[SC9101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SC9101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SC9101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SC9101] TO [DYNGRP]
GO