CREATE TABLE [dbo].[POP10160]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD] [int] NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BKOUTTAX] [tinyint] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[FRTTXAMT] [numeric] (19, 5) NOT NULL,
[ORFRTTAX] [numeric] (19, 5) NOT NULL,
[MSCTXAMT] [numeric] (19, 5) NOT NULL,
[ORMSCTAX] [numeric] (19, 5) NOT NULL,
[TAXPURCH] [numeric] (19, 5) NOT NULL,
[ORGTXPCH] [numeric] (19, 5) NOT NULL,
[TOTPURCH] [numeric] (19, 5) NOT NULL,
[ORTOTPUR] [numeric] (19, 5) NOT NULL,
[TXDTOTTX] [numeric] (19, 5) NOT NULL,
[OTTAXPON] [numeric] (19, 5) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POP_Tax_Note_ID_Array_1] [numeric] (19, 5) NOT NULL,
[POP_Tax_Note_ID_Array_2] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP10160] ADD CONSTRAINT [PKPOP10160] PRIMARY KEY NONCLUSTERED  ([PONUMBER], [ORD], [TAXDTLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10160] ON [dbo].[POP10160] ([PONUMBER], [ORD], [DELETE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10160].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10160].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10160].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10160].[BKOUTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[ORFRTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[ORMSCTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[TAXPURCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[ORGTXPCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[TOTPURCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[ORTOTPUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[TXDTOTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[OTTAXPON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10160].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[POP_Tax_Note_ID_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10160].[POP_Tax_Note_ID_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10160].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10160].[DELETE1]'
GO
GRANT SELECT ON  [dbo].[POP10160] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10160] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10160] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10160] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[POP10160] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[POP10160] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[POP10160] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[POP10160] TO [RAPIDGRP]
GO
