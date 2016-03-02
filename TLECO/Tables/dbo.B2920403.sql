CREATE TABLE [dbo].[B2920403]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[CHRGAMNT] [numeric] (19, 5) NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TTLPYMTS] [numeric] (19, 5) NOT NULL,
[BSSI_Processed] [tinyint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2920403] ADD CONSTRAINT [CK__B2920403__ENDDAT__45E1B660] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B2920403] ADD CONSTRAINT [CK__B2920403__POSTED__46D5DA99] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[B2920403] ADD CONSTRAINT [CK__B2920403__STRTDA__44ED9227] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2920403] ADD CONSTRAINT [PKB2920403] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER], [Schedule_Payment_Number], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2920403] ON [dbo].[B2920403] ([BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920403].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920403].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920403].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920403].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920403].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2920403].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2920403].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920403].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920403].[CHRGAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920403].[MKTOPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920403].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920403].[TTLPYMTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920403].[BSSI_Processed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2920403].[POSTEDDT]'
GO
GRANT SELECT ON  [dbo].[B2920403] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2920403] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2920403] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2920403] TO [DYNGRP]
GO
