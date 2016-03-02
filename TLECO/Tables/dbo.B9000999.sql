CREATE TABLE [dbo].[B9000999]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RecalculateInterest] [tinyint] NOT NULL,
[BSSI_Billing_Start_Date] [datetime] NOT NULL,
[BSSI_Billing_End_Date] [datetime] NOT NULL,
[PRINCIPAL_BALANCE] [numeric] (19, 5) NOT NULL,
[CHRGAMNT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B9000999] ADD CONSTRAINT [CK__B9000999__BSSI_B__1BB017B2] CHECK ((datepart(hour,[BSSI_Billing_End_Date])=(0) AND datepart(minute,[BSSI_Billing_End_Date])=(0) AND datepart(second,[BSSI_Billing_End_Date])=(0) AND datepart(millisecond,[BSSI_Billing_End_Date])=(0)))
GO
ALTER TABLE [dbo].[B9000999] ADD CONSTRAINT [CK__B9000999__BSSI_B__1ABBF379] CHECK ((datepart(hour,[BSSI_Billing_Start_Date])=(0) AND datepart(minute,[BSSI_Billing_Start_Date])=(0) AND datepart(second,[BSSI_Billing_Start_Date])=(0) AND datepart(millisecond,[BSSI_Billing_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[B9000999] ADD CONSTRAINT [PKB9000999] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER], [Schedule_Payment_Number], [DOCNUMBR], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000999].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000999].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000999].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000999].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000999].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000999].[BSSI_RecalculateInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000999].[BSSI_Billing_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000999].[BSSI_Billing_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000999].[PRINCIPAL_BALANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000999].[CHRGAMNT]'
GO
GRANT SELECT ON  [dbo].[B9000999] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B9000999] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B9000999] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B9000999] TO [DYNGRP]
GO
