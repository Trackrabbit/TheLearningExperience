CREATE TABLE [dbo].[SVC8001]
(
[PMDTLID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCRDTYPE] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC8001] ADD CONSTRAINT [PKSVC8001] PRIMARY KEY CLUSTERED  ([PMDTLID], [RCRDTYPE], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC8001].[PMDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC8001].[RCRDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC8001].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC8001].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC8001].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC8001].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC8001].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC8001].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC8001].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC8001].[EXTDCOST]'
GO
GRANT SELECT ON  [dbo].[SVC8001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC8001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC8001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC8001] TO [DYNGRP]
GO
