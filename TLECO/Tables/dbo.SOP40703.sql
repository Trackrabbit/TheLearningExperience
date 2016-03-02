CREATE TABLE [dbo].[SOP40703]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYFROM] [numeric] (19, 5) NOT NULL,
[QTYTO] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP40703] ADD CONSTRAINT [PKSOP40703] PRIMARY KEY NONCLUSTERED  ([USERID], [CUSTNMBR], [ITEMNMBR], [UOFM], [QTYFROM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40703].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40703].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40703].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40703].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40703].[QTYFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40703].[QTYTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40703].[UNITPRCE]'
GO
GRANT SELECT ON  [dbo].[SOP40703] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP40703] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP40703] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40703] TO [DYNGRP]
GO
