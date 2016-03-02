CREATE TABLE [dbo].[SOP40701]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP40701] ADD CONSTRAINT [PKSOP40701] PRIMARY KEY CLUSTERED  ([USERID], [PRCBKID], [ITEMNMBR], [UOFM], [QTYFROM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP40701] ON [dbo].[SOP40701] ([PRCBKID], [ITEMNMBR], [UMQTYINB], [QTYFROM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40701].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40701].[PRCBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40701].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40701].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40701].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40701].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40701].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40701].[QTYFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40701].[QTYTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40701].[UMQTYINB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40701].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40701].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40701].[ERMSGTXT]'
GO
GRANT SELECT ON  [dbo].[SOP40701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP40701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP40701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40701] TO [DYNGRP]
GO
