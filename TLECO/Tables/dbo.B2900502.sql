CREATE TABLE [dbo].[B2900502]
(
[BSSI_LeaseID] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[FIRST_INV_DUE_DATE] [datetime] NOT NULL,
[BSSI_DownPayment] [numeric] (19, 5) NOT NULL,
[SCHEDULE_INT_TYPE1] [smallint] NOT NULL,
[BSSI_LeaseLoanType] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900502] ADD CONSTRAINT [CK__B2900502__DOCDAT__66BC612F] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900502] ADD CONSTRAINT [CK__B2900502__FIRST___67B08568] CHECK ((datepart(hour,[FIRST_INV_DUE_DATE])=(0) AND datepart(minute,[FIRST_INV_DUE_DATE])=(0) AND datepart(second,[FIRST_INV_DUE_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DUE_DATE])=(0)))
GO
ALTER TABLE [dbo].[B2900502] ADD CONSTRAINT [PKB2900502] PRIMARY KEY NONCLUSTERED  ([BSSI_LeaseID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900502] ON [dbo].[B2900502] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900502].[BSSI_LeaseID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900502].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900502].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900502].[FIRST_INV_DUE_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900502].[BSSI_DownPayment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900502].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900502].[BSSI_LeaseLoanType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900502].[BSSI_Facility_ID]'
GO
GRANT SELECT ON  [dbo].[B2900502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900502] TO [DYNGRP]
GO
