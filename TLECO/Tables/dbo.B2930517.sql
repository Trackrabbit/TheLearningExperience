CREATE TABLE [dbo].[B2930517]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[BSSI_DocDesc] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCTAMNT] [numeric] (19, 5) NOT NULL,
[ORTRXAMT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_LinkARDocToLoan] [tinyint] NOT NULL,
[BSSI_AddItemsToCollater] [tinyint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930517] ADD CONSTRAINT [PKB2930517] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number], [CUSTNMBR], [DOCNUMBR], [RMDTYPAL]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2930517] ON [dbo].[B2930517] ([DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930517].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930517].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930517].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930517].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930517].[BSSI_DocDesc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930517].[ACCTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930517].[ORTRXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930517].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930517].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930517].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930517].[BSSI_LinkARDocToLoan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930517].[BSSI_AddItemsToCollater]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930517].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[B2930517] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930517] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930517] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930517] TO [DYNGRP]
GO
