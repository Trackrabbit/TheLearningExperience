CREATE TABLE [dbo].[SVC00921]
(
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[LISTPRCE] [numeric] (19, 5) NOT NULL,
[COSTAMNT] [numeric] (19, 5) NOT NULL,
[PRICSHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBLABOR] [tinyint] NOT NULL,
[CBARTS] [tinyint] NOT NULL,
[CBEXP] [tinyint] NOT NULL,
[CBADDNL] [tinyint] NOT NULL,
[DLRORPCT] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00921] ADD CONSTRAINT [PKSVC00921] PRIMARY KEY CLUSTERED  ([SRVTYPE], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00921].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00921].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00921].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00921].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00921].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00921].[LISTPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00921].[COSTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00921].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00921].[CBLABOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00921].[CBARTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00921].[CBEXP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00921].[CBADDNL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00921].[DLRORPCT]'
GO
GRANT SELECT ON  [dbo].[SVC00921] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00921] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00921] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00921] TO [DYNGRP]
GO
