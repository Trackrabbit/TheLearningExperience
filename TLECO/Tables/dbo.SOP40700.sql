CREATE TABLE [dbo].[SOP40700]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYFROM] [numeric] (19, 5) NOT NULL,
[QTYTO] [numeric] (19, 5) NOT NULL,
[UMQTYINB] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORUNTPRC] [numeric] (19, 5) NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP40700] ADD CONSTRAINT [PKSOP40700] PRIMARY KEY CLUSTERED  ([USERID], [CUSTNMBR], [ITEMNMBR], [UOFM], [QTYFROM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP40700] ON [dbo].[SOP40700] ([USERID], [CUSTNMBR], [ITEMNMBR], [UMQTYINB], [QTYFROM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40700].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40700].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40700].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40700].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40700].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40700].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40700].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40700].[QTYFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40700].[QTYTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40700].[UMQTYINB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40700].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40700].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40700].[ORUNTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40700].[ERMSGTXT]'
GO
GRANT SELECT ON  [dbo].[SOP40700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP40700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP40700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40700] TO [DYNGRP]
GO
