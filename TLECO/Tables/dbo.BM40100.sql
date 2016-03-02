CREATE TABLE [dbo].[BM40100]
(
[SETUPKEY] [smallint] NOT NULL,
[Default_Document_Date] [smallint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[TRX_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AllowQtyOverride] [tinyint] NOT NULL,
[ALLOWSERLOTLINKING] [tinyint] NOT NULL,
[USRDFPR1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BM40100] ADD CONSTRAINT [PKBM40100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM40100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM40100].[Default_Document_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM40100].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM40100].[TRX_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM40100].[AllowQtyOverride]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM40100].[ALLOWSERLOTLINKING]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM40100].[USRDFPR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM40100].[USRDRPR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM40100].[USRDRPR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM40100].[USRDRPR4]'
GO
GRANT SELECT ON  [dbo].[BM40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM40100] TO [DYNGRP]
GO
