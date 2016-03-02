CREATE TABLE [dbo].[B2900550]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[BSSI_Billing_Start_Date] [datetime] NOT NULL,
[BSSI_Billing_End_Date] [datetime] NOT NULL,
[PRINCIPAL_BALANCE] [numeric] (19, 5) NOT NULL,
[INTEREST_AMOUNT] [numeric] (19, 5) NOT NULL,
[BSSI_DaysofInterest] [smallint] NOT NULL,
[BSSI_Interest_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_InterestAccrualAmnt] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900550] ADD CONSTRAINT [CK__B2900550__BSSI_B__1794A2B4] CHECK ((datepart(hour,[BSSI_Billing_End_Date])=(0) AND datepart(minute,[BSSI_Billing_End_Date])=(0) AND datepart(second,[BSSI_Billing_End_Date])=(0) AND datepart(millisecond,[BSSI_Billing_End_Date])=(0)))
GO
ALTER TABLE [dbo].[B2900550] ADD CONSTRAINT [CK__B2900550__BSSI_B__16A07E7B] CHECK ((datepart(hour,[BSSI_Billing_Start_Date])=(0) AND datepart(minute,[BSSI_Billing_Start_Date])=(0) AND datepart(second,[BSSI_Billing_Start_Date])=(0) AND datepart(millisecond,[BSSI_Billing_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[B2900550] ADD CONSTRAINT [PKB2900550] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number], [Schedule_Payment_Number], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900550].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900550].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900550].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900550].[BSSI_Billing_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900550].[BSSI_Billing_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900550].[PRINCIPAL_BALANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900550].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900550].[BSSI_DaysofInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900550].[BSSI_Interest_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900550].[BSSI_InterestAccrualAmnt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900550].[USERID]'
GO
GRANT SELECT ON  [dbo].[B2900550] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900550] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900550] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900550] TO [DYNGRP]
GO
