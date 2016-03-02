CREATE TABLE [dbo].[PM30700]
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM30700] ADD CONSTRAINT [PKPM30700] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM30700] ON [dbo].[PM30700] ([TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1PM30700] ON [dbo].[PM30700] ([VCHRNMBR], [TAXDTLID], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30700].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30700].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30700].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30700].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30700].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30700].[BKOUTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[PCTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[ORPURTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[ORFRTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[ORMSCTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30700].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30700].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[TDTTXPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[ORTXBPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[TXDTTPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30700].[ORTOTPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30700].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[PM30700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM30700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM30700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM30700] TO [DYNGRP]
GO
