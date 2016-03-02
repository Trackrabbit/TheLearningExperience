CREATE TABLE [dbo].[TX00203]
(
[HISTTYPE] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TDTSLPCH] [numeric] (19, 5) NOT NULL,
[TXDTTXSP] [numeric] (19, 5) NOT NULL,
[TXDTSPTX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TX00203] ADD CONSTRAINT [PKTX00203] PRIMARY KEY NONCLUSTERED  ([TAXDTLID], [HISTTYPE], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00203].[HISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00203].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00203].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00203].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00203].[TDTSLPCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00203].[TXDTTXSP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00203].[TXDTSPTX]'
GO
GRANT SELECT ON  [dbo].[TX00203] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TX00203] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TX00203] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TX00203] TO [DYNGRP]
GO
