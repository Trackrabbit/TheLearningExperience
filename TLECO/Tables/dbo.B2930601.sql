CREATE TABLE [dbo].[B2930601]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[AMNTPAID] [numeric] (19, 5) NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Schedule_Posting_St] [tinyint] NOT NULL,
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_INT_RATE] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Billing_Start_Date] [datetime] NOT NULL,
[BSSI_Billing_End_Date] [datetime] NOT NULL,
[BSSI_Journal_Entry] [int] NOT NULL,
[BSSI_Journal_Entry_Accru] [int] NOT NULL,
[BSSI_JournalEntryAdjDeff] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[CMMTTEXT] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930601] ADD CONSTRAINT [CK__B2930601__BSSI_B__62779A56] CHECK ((datepart(hour,[BSSI_Billing_End_Date])=(0) AND datepart(minute,[BSSI_Billing_End_Date])=(0) AND datepart(second,[BSSI_Billing_End_Date])=(0) AND datepart(millisecond,[BSSI_Billing_End_Date])=(0)))
GO
ALTER TABLE [dbo].[B2930601] ADD CONSTRAINT [CK__B2930601__BSSI_B__6183761D] CHECK ((datepart(hour,[BSSI_Billing_Start_Date])=(0) AND datepart(minute,[BSSI_Billing_Start_Date])=(0) AND datepart(second,[BSSI_Billing_Start_Date])=(0) AND datepart(millisecond,[BSSI_Billing_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[B2930601] ADD CONSTRAINT [CK__B2930601__DOCDAT__608F51E4] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2930601] ADD CONSTRAINT [CK__B2930601__DUEDAT__5F9B2DAB] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[B2930601] ADD CONSTRAINT [PKB2930601] PRIMARY KEY NONCLUSTERED  ([USERID], [SCHEDULE_NUMBER], [Schedule_Payment_Number], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B2930601] ON [dbo].[B2930601] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2930601] ON [dbo].[B2930601] ([CUSTNMBR], [DUEDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B2930601] ON [dbo].[B2930601] ([DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B2930601] ON [dbo].[B2930601] ([MARKED], [MKDBYUSR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2930601] ON [dbo].[B2930601] ([SCHEDULE_NUMBER], [DUEDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930601].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930601].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930601].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930601].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930601].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930601].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930601].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930601].[PRINCIPAL_BALANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930601].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930601].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[MARKED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930601].[MKDBYUSR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930601].[AMNTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930601].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930601].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[BSSI_Schedule_Posting_St]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930601].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930601].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930601].[BSSI_Billing_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930601].[BSSI_Billing_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[BSSI_Journal_Entry]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[BSSI_Journal_Entry_Accru]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930601].[BSSI_JournalEntryAdjDeff]'
GO
GRANT SELECT ON  [dbo].[B2930601] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930601] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930601] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930601] TO [DYNGRP]
GO
