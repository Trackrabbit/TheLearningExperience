CREATE TABLE [dbo].[B2900504]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRINCIPAL_AMOUNT] [numeric] (19, 5) NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[SCHEDULE_INT_RATE] [int] NOT NULL,
[BSSI_Recognition_Type] [smallint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_Recog_Length_Period] [int] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[BSSI_Recalculate] [tinyint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_LeaseID] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableMinTerm] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900504] ADD CONSTRAINT [CK__B2900504__STRTDA__59626611] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900504] ADD CONSTRAINT [PKB2900504] PRIMARY KEY NONCLUSTERED  ([BSSI_LeaseID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900504] ON [dbo].[B2900504] ([BSSI_LeaseID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900504].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900504].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900504].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900504].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900504].[BSSI_Recognition_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900504].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900504].[BSSI_Recog_Length_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900504].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900504].[BSSI_Recalculate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900504].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900504].[BSSI_LeaseID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900504].[BSSI_EnableMinTerm]'
GO
GRANT SELECT ON  [dbo].[B2900504] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900504] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900504] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900504] TO [DYNGRP]
GO
