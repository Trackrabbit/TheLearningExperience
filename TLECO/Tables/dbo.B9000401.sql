CREATE TABLE [dbo].[B9000401]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[INTEREST_AMOUNT] [numeric] (19, 5) NOT NULL,
[PRINCIPAL_AMOUNT] [numeric] (19, 5) NOT NULL,
[PRINCIPAL_BALANCE] [numeric] (19, 5) NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[Status] [smallint] NOT NULL,
[INVCNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHRGAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Billing_Start_Date] [datetime] NOT NULL,
[BSSI_Billing_End_Date] [datetime] NOT NULL,
[INVODATE] [datetime] NOT NULL,
[BSSI_DaysofInterest] [smallint] NOT NULL,
[BSSI_SpecialPayment] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B9000401] ADD CONSTRAINT [CK__B9000401__BSSI_B__2D04C0E6] CHECK ((datepart(hour,[BSSI_Billing_End_Date])=(0) AND datepart(minute,[BSSI_Billing_End_Date])=(0) AND datepart(second,[BSSI_Billing_End_Date])=(0) AND datepart(millisecond,[BSSI_Billing_End_Date])=(0)))
GO
ALTER TABLE [dbo].[B9000401] ADD CONSTRAINT [CK__B9000401__BSSI_B__2C109CAD] CHECK ((datepart(hour,[BSSI_Billing_Start_Date])=(0) AND datepart(minute,[BSSI_Billing_Start_Date])=(0) AND datepart(second,[BSSI_Billing_Start_Date])=(0) AND datepart(millisecond,[BSSI_Billing_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[B9000401] ADD CONSTRAINT [CK__B9000401__DOCDAT__2B1C7874] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B9000401] ADD CONSTRAINT [CK__B9000401__DUEDAT__2A28543B] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[B9000401] ADD CONSTRAINT [CK__B9000401__INVODA__2DF8E51F] CHECK ((datepart(hour,[INVODATE])=(0) AND datepart(minute,[INVODATE])=(0) AND datepart(second,[INVODATE])=(0) AND datepart(millisecond,[INVODATE])=(0)))
GO
ALTER TABLE [dbo].[B9000401] ADD CONSTRAINT [PKB9000401] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER], [Schedule_Payment_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B9000401] ON [dbo].[B9000401] ([CUSTNMBR], [DUEDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B9000401] ON [dbo].[B9000401] ([SCHEDULE_NUMBER], [DUEDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000401].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000401].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000401].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000401].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000401].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000401].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000401].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000401].[PRINCIPAL_BALANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000401].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000401].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000401].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000401].[INVCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000401].[CHRGAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000401].[BSSI_Billing_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000401].[BSSI_Billing_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000401].[INVODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000401].[BSSI_DaysofInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000401].[BSSI_SpecialPayment]'
GO
GRANT SELECT ON  [dbo].[B9000401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B9000401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B9000401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B9000401] TO [DYNGRP]
GO
