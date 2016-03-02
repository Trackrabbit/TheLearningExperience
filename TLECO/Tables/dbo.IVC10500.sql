CREATE TABLE [dbo].[IVC10500]
(
[DOCTYPE] [smallint] NOT NULL,
[INVCNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[BKOUTTAX] [tinyint] NOT NULL,
[TXABLETX] [tinyint] NOT NULL,
[STAXAMNT] [numeric] (19, 5) NOT NULL,
[FRTTXAMT] [numeric] (19, 5) NOT NULL,
[MSCTXAMT] [numeric] (19, 5) NOT NULL,
[TAXDTSLS] [numeric] (19, 5) NOT NULL,
[TDTTXSLS] [numeric] (19, 5) NOT NULL,
[TXDTOTTX] [numeric] (19, 5) NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVC10500] ADD CONSTRAINT [PKIVC10500] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [INVCNMBR], [LNITMSEQ], [TAXDTLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IVC10500] ON [dbo].[IVC10500] ([DOCTYPE], [INVCNMBR], [LNITMSEQ], [DELETE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10500].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10500].[INVCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10500].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10500].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10500].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10500].[BKOUTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10500].[TXABLETX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10500].[STAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10500].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10500].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10500].[TAXDTSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10500].[TDTTXSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10500].[TXDTOTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10500].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10500].[TRXSORCE]'
GO
GRANT SELECT ON  [dbo].[IVC10500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IVC10500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IVC10500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IVC10500] TO [DYNGRP]
GO
