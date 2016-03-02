CREATE TABLE [dbo].[B2930508]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[INTEREST_AMOUNT] [numeric] (19, 5) NOT NULL,
[BSSI_AccrualsPaid] [tinyint] NOT NULL,
[BSSI_PaidJournalEntry] [int] NOT NULL,
[MTHSLCTD] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[BSSI_IsAP] [tinyint] NOT NULL,
[BSSI_Billing_Start_Date] [datetime] NOT NULL,
[BSSI_Billing_End_Date] [datetime] NOT NULL,
[RVRSNGDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930508] ADD CONSTRAINT [CK__B2930508__BSSI_B__5559041A] CHECK ((datepart(hour,[BSSI_Billing_End_Date])=(0) AND datepart(minute,[BSSI_Billing_End_Date])=(0) AND datepart(second,[BSSI_Billing_End_Date])=(0) AND datepart(millisecond,[BSSI_Billing_End_Date])=(0)))
GO
ALTER TABLE [dbo].[B2930508] ADD CONSTRAINT [CK__B2930508__BSSI_B__5464DFE1] CHECK ((datepart(hour,[BSSI_Billing_Start_Date])=(0) AND datepart(minute,[BSSI_Billing_Start_Date])=(0) AND datepart(second,[BSSI_Billing_Start_Date])=(0) AND datepart(millisecond,[BSSI_Billing_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[B2930508] ADD CONSTRAINT [CK__B2930508__DATE1__5370BBA8] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B2930508] ADD CONSTRAINT [CK__B2930508__RVRSNG__564D2853] CHECK ((datepart(hour,[RVRSNGDT])=(0) AND datepart(minute,[RVRSNGDT])=(0) AND datepart(second,[RVRSNGDT])=(0) AND datepart(millisecond,[RVRSNGDT])=(0)))
GO
ALTER TABLE [dbo].[B2930508] ADD CONSTRAINT [PKB2930508] PRIMARY KEY NONCLUSTERED  ([BSSI_IsAP], [SCHEDULE_NUMBER], [Schedule_Payment_Number], [DATE1], [JRNENTRY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1B2930508] ON [dbo].[B2930508] ([BSSI_IsAP], [SCHEDULE_NUMBER], [Schedule_Payment_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2930508] ON [dbo].[B2930508] ([BSSI_IsAP], [SCHEDULE_NUMBER], [Schedule_Payment_Number], [MTHSLCTD], [YEAR1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2930508] ON [dbo].[B2930508] ([JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930508].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930508].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930508].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930508].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930508].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930508].[BSSI_AccrualsPaid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930508].[BSSI_PaidJournalEntry]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930508].[MTHSLCTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930508].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930508].[DUMYRCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930508].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930508].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930508].[BSSI_IsAP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930508].[BSSI_Billing_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930508].[BSSI_Billing_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930508].[RVRSNGDT]'
GO
GRANT SELECT ON  [dbo].[B2930508] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930508] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930508] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930508] TO [DYNGRP]
GO
