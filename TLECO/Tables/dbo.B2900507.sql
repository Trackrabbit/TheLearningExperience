CREATE TABLE [dbo].[B2900507]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LeaseID] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeAmt] [numeric] (19, 5) NOT NULL,
[BSSI_ChargeIncInLease] [tinyint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900507] ADD CONSTRAINT [PKB2900507] PRIMARY KEY NONCLUSTERED  ([BSSI_LeaseID], [BSSI_ChargeID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2900507] ON [dbo].[B2900507] ([BSSI_ChargeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900507] ON [dbo].[B2900507] ([BSSI_LeaseID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B2900507] ON [dbo].[B2900507] ([LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900507].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900507].[BSSI_LeaseID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900507].[BSSI_ChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900507].[BSSI_ChargeAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900507].[BSSI_ChargeIncInLease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900507].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[B2900507] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900507] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900507] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900507] TO [DYNGRP]
GO
