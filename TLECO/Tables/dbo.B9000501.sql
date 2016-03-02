CREATE TABLE [dbo].[B9000501]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTPYDT] [datetime] NOT NULL,
[PRINCIPAL_AMOUNT] [numeric] (19, 5) NOT NULL,
[INTEREST_AMOUNT] [numeric] (19, 5) NOT NULL,
[CHRGAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B9000501] ADD CONSTRAINT [CK__B9000501__LASTPY__0D61F85B] CHECK ((datepart(hour,[LASTPYDT])=(0) AND datepart(minute,[LASTPYDT])=(0) AND datepart(second,[LASTPYDT])=(0) AND datepart(millisecond,[LASTPYDT])=(0)))
GO
ALTER TABLE [dbo].[B9000501] ADD CONSTRAINT [PKB9000501] PRIMARY KEY CLUSTERED  ([BSSI_Lease_Loan_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B9000501] ON [dbo].[B9000501] ([USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000501].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000501].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000501].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000501].[LASTPYDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000501].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000501].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000501].[CHRGAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000501].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000501].[USERID]'
GO
GRANT SELECT ON  [dbo].[B9000501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B9000501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B9000501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B9000501] TO [DYNGRP]
GO
