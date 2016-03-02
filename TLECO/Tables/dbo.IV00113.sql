CREATE TABLE [dbo].[IV00113]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOQTY] [numeric] (19, 5) NOT NULL,
[PRICTYPE] [smallint] NOT NULL,
[PRCNTAGE] [numeric] (19, 5) NOT NULL,
[UOMPRICE] [numeric] (19, 5) NOT NULL,
[INCORDEC] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00113] ADD CONSTRAINT [PKIV00113] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [CURNCYID], [PRCLEVEL], [UOFM], [TOQTY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00113].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00113].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00113].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00113].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00113].[TOQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00113].[PRICTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00113].[PRCNTAGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00113].[UOMPRICE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00113].[INCORDEC]'
GO
GRANT SELECT ON  [dbo].[IV00113] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00113] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00113] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00113] TO [DYNGRP]
GO
