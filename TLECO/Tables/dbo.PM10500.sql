CREATE TABLE [dbo].[PM10500]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BKOUTTAX] [tinyint] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[PCTAXAMT] [numeric] (19, 5) NOT NULL,
[ORPURTAX] [numeric] (19, 5) NOT NULL,
[FRTTXAMT] [numeric] (19, 5) NOT NULL,
[ORFRTTAX] [numeric] (19, 5) NOT NULL,
[MSCTXAMT] [numeric] (19, 5) NOT NULL,
[ORMSCTAX] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TDTTXPUR] [numeric] (19, 5) NOT NULL,
[ORTXBPUR] [numeric] (19, 5) NOT NULL,
[TXDTTPUR] [numeric] (19, 5) NOT NULL,
[ORTOTPUR] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM10500] ADD CONSTRAINT [PKPM10500] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [TRXSORCE], [TAXDTLID], [ACTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10500].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10500].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10500].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10500].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10500].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10500].[BKOUTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[PCTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[ORPURTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[ORFRTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[ORMSCTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10500].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10500].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[TDTTXPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[ORTXBPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[TXDTTPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10500].[ORTOTPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10500].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10500].[POSTED]'
GO
GRANT SELECT ON  [dbo].[PM10500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM10500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM10500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM10500] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM10500] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM10500] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM10500] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM10500] TO [RAPIDGRP]
GO
