CREATE TABLE [dbo].[B2900200]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[NUM_PAYMENTS] [smallint] NOT NULL,
[NOFCUPER] [smallint] NOT NULL,
[SCHEDULE_INT_RATE] [int] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InterestRate] [int] NOT NULL,
[BSSI_LeaseID] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMNT_FREQUENCY] [smallint] NOT NULL,
[SCHEDULE_INT_TYPE1] [smallint] NOT NULL,
[FIRST_INV_DUE_DATE] [datetime] NOT NULL,
[BSSI_CalculatedDeferralA] [numeric] (19, 5) NOT NULL,
[BSSI_EnableNegativeAmort] [tinyint] NOT NULL,
[BSSI_LeaseLoanType] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900200] ADD CONSTRAINT [CK__B2900200__DOCDAT__4F39DD59] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900200] ADD CONSTRAINT [CK__B2900200__FIRST___502E0192] CHECK ((datepart(hour,[FIRST_INV_DUE_DATE])=(0) AND datepart(minute,[FIRST_INV_DUE_DATE])=(0) AND datepart(second,[FIRST_INV_DUE_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DUE_DATE])=(0)))
GO
ALTER TABLE [dbo].[B2900200] ADD CONSTRAINT [PKB2900200] PRIMARY KEY CLUSTERED  ([USERID], [CUSTNMBR], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900200] ON [dbo].[B2900200] ([USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900200].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900200].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900200].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900200].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900200].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900200].[NUM_PAYMENTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900200].[NOFCUPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900200].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900200].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900200].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900200].[BSSI_InterestRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900200].[BSSI_LeaseID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900200].[PYMNT_FREQUENCY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900200].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900200].[FIRST_INV_DUE_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900200].[BSSI_CalculatedDeferralA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900200].[BSSI_EnableNegativeAmort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900200].[BSSI_LeaseLoanType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900200].[BSSI_Facility_ID]'
GO
GRANT SELECT ON  [dbo].[B2900200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900200] TO [DYNGRP]
GO
