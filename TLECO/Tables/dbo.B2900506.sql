CREATE TABLE [dbo].[B2900506]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRINCIPAL_AMOUNT] [numeric] (19, 5) NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[SCHEDULE_INT_RATE] [int] NOT NULL,
[SCHEDULE_INT_TYPE1] [smallint] NOT NULL,
[BSSI_Recognition_Type] [smallint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_Recog_Length_Period] [int] NOT NULL,
[BSSI_Recog_Length_Months] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[BSSI_Recalculate] [tinyint] NOT NULL,
[BSSI_EnableMinTerm] [tinyint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_EnableGracePeriod] [tinyint] NOT NULL,
[BSSI_ActualPymtAmt] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900506] ADD CONSTRAINT [CK__B2900506__STRTDA__00672499] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900506] ADD CONSTRAINT [PKB2900506] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900506] ON [dbo].[B2900506] ([BSSI_Lease_Loan_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900506].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900506].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900506].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[BSSI_Recognition_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[BSSI_Recog_Length_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900506].[BSSI_Recog_Length_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900506].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[BSSI_Recalculate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[BSSI_EnableMinTerm]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900506].[BSSI_EnableGracePeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900506].[BSSI_ActualPymtAmt]'
GO
GRANT SELECT ON  [dbo].[B2900506] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900506] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900506] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900506] TO [DYNGRP]
GO
