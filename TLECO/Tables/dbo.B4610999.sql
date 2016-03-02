CREATE TABLE [dbo].[B4610999]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Lease_Initial_ExpDT] [datetime] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4610999] ADD CONSTRAINT [CK__B4610999__BSSI_L__1214FE05] CHECK ((datepart(hour,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Initial_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4610999] ADD CONSTRAINT [CK__B4610999__STRTDA__1309223E] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4610999] ADD CONSTRAINT [PKB4610999] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [LOCNCODE], [BSSI_Tenant_Lease_Number], [BSSI_Charge_ID], [STRTDATE], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610999].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610999].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610999].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610999].[BSSI_Tenant_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4610999].[BSSI_Lease_Initial_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610999].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4610999].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610999].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610999].[USERID]'
GO
GRANT SELECT ON  [dbo].[B4610999] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4610999] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4610999] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4610999] TO [DYNGRP]
GO
