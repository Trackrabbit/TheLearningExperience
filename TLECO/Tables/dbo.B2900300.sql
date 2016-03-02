CREATE TABLE [dbo].[B2900300]
(
[CLASSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLASDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rev_Source_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LeaseLoanType] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableNegativeAmort] [tinyint] NOT NULL,
[BSSI_EnableLoanPayrollLi] [tinyint] NOT NULL,
[BSSI_EnableDisbLoan] [tinyint] NOT NULL,
[BSSI_EnableDeferCharge] [tinyint] NOT NULL,
[BSSI_EnableDeferPrincipa] [tinyint] NOT NULL,
[BSSI_EnableDeferInterest] [tinyint] NOT NULL,
[BSSI_RecalculateInterest] [tinyint] NOT NULL,
[BSSI_InterestMethod] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900300] ADD CONSTRAINT [PKB2900300] PRIMARY KEY NONCLUSTERED  ([CLASSID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900300] ON [dbo].[B2900300] ([CLASDSCR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900300].[CLASSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900300].[CLASDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900300].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900300].[BSSI_Rev_Source_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900300].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900300].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900300].[BSSI_LeaseLoanType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900300].[BSSI_EnableNegativeAmort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900300].[BSSI_EnableLoanPayrollLi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900300].[BSSI_EnableDisbLoan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900300].[BSSI_EnableDeferCharge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900300].[BSSI_EnableDeferPrincipa]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900300].[BSSI_EnableDeferInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900300].[BSSI_RecalculateInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900300].[BSSI_InterestMethod]'
GO
GRANT SELECT ON  [dbo].[B2900300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900300] TO [DYNGRP]
GO
