CREATE TABLE [dbo].[B2900501]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Recognition_Type] [smallint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_Recog_Length_Period] [int] NOT NULL,
[BSSI_Recog_Length_Months] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900501] ADD CONSTRAINT [CK__B2900501__ENDDAT__2598A948] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900501] ADD CONSTRAINT [CK__B2900501__STRTDA__24A4850F] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900501] ADD CONSTRAINT [PKB2900501] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900501] ON [dbo].[B2900501] ([SCHEDULE_NUMBER], [BSSI_Lease_Loan_Number], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900501].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900501].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900501].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900501].[BSSI_Recognition_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900501].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900501].[BSSI_Recog_Length_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900501].[BSSI_Recog_Length_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900501].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900501].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[B2900501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900501] TO [DYNGRP]
GO
