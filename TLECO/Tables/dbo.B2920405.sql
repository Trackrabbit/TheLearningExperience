CREATE TABLE [dbo].[B2920405]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[CHRGAMNT] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2920405] ADD CONSTRAINT [CK__B2920405__ENDDAT__10688238] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B2920405] ADD CONSTRAINT [CK__B2920405__STRTDA__0F745DFF] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2920405] ADD CONSTRAINT [PKB2920405] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER], [Schedule_Payment_Number], [LNSEQNBR], [CMPNTSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920405].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920405].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920405].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920405].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920405].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920405].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920405].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920405].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920405].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920405].[DEDUCTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2920405].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2920405].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920405].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920405].[CHRGAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920405].[USERID]'
GO
GRANT SELECT ON  [dbo].[B2920405] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2920405] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2920405] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2920405] TO [DYNGRP]
GO
