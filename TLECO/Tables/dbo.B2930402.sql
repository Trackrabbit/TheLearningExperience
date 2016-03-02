CREATE TABLE [dbo].[B2930402]
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
[MARKED] [tinyint] NOT NULL,
[MKDBYUSR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableLoanPayrollLi] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930402] ADD CONSTRAINT [CK__B2930402__DOCDAT__5F9040B3] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2930402] ADD CONSTRAINT [CK__B2930402__DUEDAT__5E9C1C7A] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[B2930402] ADD CONSTRAINT [PKB2930402] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER], [Schedule_Payment_Number], [BSSI_ChargeID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930402].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930402].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930402].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930402].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930402].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930402].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930402].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930402].[PRINCIPAL_BALANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930402].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930402].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930402].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930402].[MARKED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930402].[MKDBYUSR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930402].[BSSI_ChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930402].[BSSI_EnableLoanPayrollLi]'
GO
GRANT SELECT ON  [dbo].[B2930402] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930402] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930402] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930402] TO [DYNGRP]
GO
