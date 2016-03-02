CREATE TABLE [dbo].[B2930511]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DeductionFrequency] [smallint] NOT NULL,
[BSSI_DeductionMethod] [smallint] NOT NULL,
[BSSI_PayPeriodOption] [smallint] NOT NULL,
[BSSI_SplitBiWeekly] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930511] ADD CONSTRAINT [PKB2930511] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930511].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930511].[BSSI_DeductionFrequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930511].[BSSI_DeductionMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930511].[BSSI_PayPeriodOption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930511].[BSSI_SplitBiWeekly]'
GO
GRANT SELECT ON  [dbo].[B2930511] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930511] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930511] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930511] TO [DYNGRP]
GO
