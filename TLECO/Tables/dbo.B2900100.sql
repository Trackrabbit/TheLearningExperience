CREATE TABLE [dbo].[B2900100]
(
[SETUPKEY] [smallint] NOT NULL,
[BSSI_Prorate_All] [tinyint] NOT NULL,
[BSSI_Equal_Per_Period] [tinyint] NOT NULL,
[BSSI_Autopost_Schedule] [tinyint] NOT NULL,
[BSSI_Schedule_Change_Pas] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_Lease_Loan_Prefix] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LeaseLoan_NextNo] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rev_Source_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EmailSubject] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PDF_Path] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableNegativeAmort] [tinyint] NOT NULL,
[BSSI_LeaseLoanType] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableLoanPayrollLi] [tinyint] NOT NULL,
[BSSI_EnableDisbLoan] [tinyint] NOT NULL,
[BSSI_EnablePrefrdApply] [tinyint] NOT NULL,
[BSSI_EnableDeferCharge] [tinyint] NOT NULL,
[BSSI_EnableDeferPrincipa] [tinyint] NOT NULL,
[BSSI_EnableDeferInterest] [tinyint] NOT NULL,
[BSSI_EnableProrateExtraC] [tinyint] NOT NULL,
[BSSI_RecalculateInterest] [tinyint] NOT NULL,
[BSSI_InterestMethod] [smallint] NOT NULL,
[MINPYDLR] [numeric] (19, 5) NOT NULL,
[BSSI_EnaAutoCashRcptPost] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_EmailBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900100] ADD CONSTRAINT [PKB2900100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_Prorate_All]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_Equal_Per_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_Autopost_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900100].[BSSI_Schedule_Change_Pas]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900100].[BSSI_Lease_Loan_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900100].[BSSI_LeaseLoan_NextNo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900100].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900100].[BSSI_Rev_Source_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900100].[BSSI_EmailSubject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900100].[BSSI_PDF_Path]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnableNegativeAmort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900100].[BSSI_LeaseLoanType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnableLoanPayrollLi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnableDisbLoan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnablePrefrdApply]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnableDeferCharge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnableDeferPrincipa]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnableDeferInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnableProrateExtraC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_RecalculateInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_InterestMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900100].[MINPYDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900100].[BSSI_EnaAutoCashRcptPost]'
GO
GRANT SELECT ON  [dbo].[B2900100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900100] TO [DYNGRP]
GO
