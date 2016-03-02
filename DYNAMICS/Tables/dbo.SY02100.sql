CREATE TABLE [dbo].[SY02100]
(
[CMPANYID] [smallint] NOT NULL,
[DICTID] [smallint] NOT NULL,
[FILSERIS] [smallint] NOT NULL,
[LGCFILID] [smallint] NOT NULL,
[DTAPTHNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DBNAME] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERVERID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY02100] ADD CONSTRAINT [PKSY02100] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [DICTID], [FILSERIS], [LGCFILID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02100].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02100].[FILSERIS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02100].[LGCFILID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02100].[DTAPTHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02100].[DBNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02100].[SERVERID]'
GO
GRANT REFERENCES ON  [dbo].[SY02100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY02100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY02100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY02100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY02100] TO [DYNGRP]
GO
