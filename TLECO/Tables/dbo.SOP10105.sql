CREATE TABLE [dbo].[SOP10105]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[BKOUTTAX] [tinyint] NOT NULL,
[TXABLETX] [tinyint] NOT NULL,
[STAXAMNT] [numeric] (19, 5) NOT NULL,
[ORSLSTAX] [numeric] (19, 5) NOT NULL,
[FRTTXAMT] [numeric] (19, 5) NOT NULL,
[ORFRTTAX] [numeric] (19, 5) NOT NULL,
[MSCTXAMT] [numeric] (19, 5) NOT NULL,
[ORMSCTAX] [numeric] (19, 5) NOT NULL,
[TAXDTSLS] [numeric] (19, 5) NOT NULL,
[ORTOTSLS] [numeric] (19, 5) NOT NULL,
[TDTTXSLS] [numeric] (19, 5) NOT NULL,
[ORTXSLS] [numeric] (19, 5) NOT NULL,
[TXDTOTTX] [numeric] (19, 5) NOT NULL,
[OTTAXPON] [numeric] (19, 5) NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10105] ADD CONSTRAINT [PKSOP10105] PRIMARY KEY NONCLUSTERED  ([SOPTYPE], [SOPNUMBE], [LNITMSEQ], [TAXDTLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10105] ON [dbo].[SOP10105] ([SOPTYPE], [SOPNUMBE], [LNITMSEQ], [DELETE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10105].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10105].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10105].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10105].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10105].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10105].[BKOUTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10105].[TXABLETX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[STAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[ORSLSTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[ORFRTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[ORMSCTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[TAXDTSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[ORTOTSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[TDTTXSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[ORTXSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[TXDTOTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10105].[OTTAXPON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10105].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10105].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10105].[TRXSORCE]'
GO
GRANT SELECT ON  [dbo].[SOP10105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10105] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10105] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10105] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10105] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10105] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[SOP10105] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[SOP10105] TO [rpt_order processor]
GO
