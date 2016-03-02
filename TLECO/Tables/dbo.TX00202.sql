CREATE TABLE [dbo].[TX00202]
(
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TDTSYTD] [numeric] (19, 5) NOT NULL,
[TDSLLYTD] [numeric] (19, 5) NOT NULL,
[TXDTSYTD] [numeric] (19, 5) NOT NULL,
[TDTSLYTD] [numeric] (19, 5) NOT NULL,
[TXDSTYTD] [numeric] (19, 5) NOT NULL,
[TDSTLYTD] [numeric] (19, 5) NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TX00202] ADD CONSTRAINT [PKTX00202] PRIMARY KEY NONCLUSTERED  ([TAXDTLID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00202].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00202].[TDTSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00202].[TDSLLYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00202].[TXDTSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00202].[TDTSLYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00202].[TXDSTYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00202].[TDSTLYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00202].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00202].[KPERHIST]'
GO
GRANT SELECT ON  [dbo].[TX00202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TX00202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TX00202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TX00202] TO [DYNGRP]
GO
