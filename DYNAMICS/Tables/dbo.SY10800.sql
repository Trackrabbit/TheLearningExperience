CREATE TABLE [dbo].[SY10800]
(
[SECMODALTID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTID] [smallint] NOT NULL,
[SECURITYID] [int] NOT NULL,
[SECRESTYPE] [smallint] NOT NULL,
[ALTDICID] [smallint] NOT NULL,
[Modified] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY10800] ADD CONSTRAINT [PKSY10800] PRIMARY KEY NONCLUSTERED  ([SECMODALTID], [DICTID], [SECURITYID], [SECRESTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10800].[SECMODALTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10800].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10800].[SECURITYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10800].[SECRESTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10800].[ALTDICID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10800].[Modified]'
GO
GRANT SELECT ON  [dbo].[SY10800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY10800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY10800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY10800] TO [DYNGRP]
GO
