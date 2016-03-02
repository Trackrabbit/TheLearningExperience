CREATE TABLE [dbo].[UPR41302]
(
[TAXCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXFLGSTS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXTBLTYP] [smallint] NOT NULL,
[TXTBLSEQ] [smallint] NOT NULL,
[TXBRULMT] [numeric] (19, 5) NOT NULL,
[TXBRKTAM] [numeric] (19, 5) NOT NULL,
[RXBRKTRT] [int] NOT NULL,
[TXBREXWG] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41302] ADD CONSTRAINT [PKUPR41302] PRIMARY KEY NONCLUSTERED  ([TAXCODE], [TXFLGSTS], [TXTBLTYP], [TXTBLSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41302].[TAXCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41302].[TXFLGSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41302].[TXTBLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41302].[TXTBLSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41302].[TXBRULMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41302].[TXBRKTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41302].[RXBRKTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41302].[TXBREXWG]'
GO
GRANT SELECT ON  [dbo].[UPR41302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41302] TO [DYNGRP]
GO
