CREATE TABLE [dbo].[IV10403]
(
[PRCSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EPITMTYP] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FREEITEM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FREEUOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MAXQTYFR] [numeric] (19, 5) NOT NULL,
[QTYFROM] [numeric] (19, 5) NOT NULL,
[QTYTO] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10403] ADD CONSTRAINT [PKIV10403] PRIMARY KEY CLUSTERED  ([PRCSHID], [EPITMTYP], [ITEMNMBR], [UOFM], [QTYFROM], [QTYTO]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10403].[PRCSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10403].[EPITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10403].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10403].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10403].[FREEITEM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10403].[FREEUOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10403].[MAXQTYFR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10403].[QTYFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10403].[QTYTO]'
GO
GRANT SELECT ON  [dbo].[IV10403] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10403] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10403] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10403] TO [DYNGRP]
GO
