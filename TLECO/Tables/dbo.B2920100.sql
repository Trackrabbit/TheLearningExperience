CREATE TABLE [dbo].[B2920100]
(
[BSSI_InvestmentLoan] [smallint] NOT NULL,
[BSSINumberDayInArrears] [smallint] NOT NULL,
[BSSI_Annually] [tinyint] NOT NULL,
[BSSI_Monthly] [tinyint] NOT NULL,
[BSSI_Quarterly] [tinyint] NOT NULL,
[BSSI_SemiAnnually] [tinyint] NOT NULL,
[BSSI_SemiMonthly] [tinyint] NOT NULL,
[BSSI_Weekly] [tinyint] NOT NULL,
[BSSI_BiWeekly] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2920100] ADD CONSTRAINT [PKB2920100] PRIMARY KEY CLUSTERED  ([BSSI_InvestmentLoan]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSI_InvestmentLoan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSINumberDayInArrears]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSI_Annually]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSI_Monthly]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSI_Quarterly]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSI_SemiAnnually]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSI_SemiMonthly]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSI_Weekly]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920100].[BSSI_BiWeekly]'
GO
GRANT SELECT ON  [dbo].[B2920100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2920100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2920100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2920100] TO [DYNGRP]
GO
