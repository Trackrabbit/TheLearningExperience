CREATE TABLE [dbo].[B2900400]
(
[BSSI_Rev_Source_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REC_ACCT_IDX] [int] NOT NULL,
[REC_OFFSET_ACCT_IDX] [int] NOT NULL,
[INT_INCOME_ACCT_IDX] [int] NOT NULL,
[BSSI_DefferalInterestInd] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_AccrualsAcctIdx] [int] NOT NULL,
[BSSI_DeductionAcctIdx] [int] NOT NULL,
[BSSI_DefferalChargeINDX] [int] NOT NULL,
[BSSI_DefferalPrincplINDX] [int] NOT NULL,
[BSSI_LoanDisbursementIND] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900400] ADD CONSTRAINT [PKB2900400] PRIMARY KEY NONCLUSTERED  ([BSSI_Rev_Source_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900400].[BSSI_Rev_Source_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900400].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[REC_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[REC_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[INT_INCOME_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[BSSI_DefferalInterestInd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900400].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[BSSI_AccrualsAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[BSSI_DeductionAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[BSSI_DefferalChargeINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[BSSI_DefferalPrincplINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900400].[BSSI_LoanDisbursementIND]'
GO
GRANT SELECT ON  [dbo].[B2900400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900400] TO [DYNGRP]
GO
