CREATE TABLE [dbo].[B2930512]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DeductionPercentage] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930512] ADD CONSTRAINT [PKB2930512] PRIMARY KEY CLUSTERED  ([BSSI_Lease_Loan_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2930512] ON [dbo].[B2930512] ([BSSI_Lease_Loan_Number], [DEDUCTON], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930512].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930512].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930512].[DEDUCTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930512].[BSSI_DeductionPercentage]'
GO
GRANT SELECT ON  [dbo].[B2930512] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930512] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930512] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930512] TO [DYNGRP]
GO
