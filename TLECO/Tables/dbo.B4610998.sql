CREATE TABLE [dbo].[B4610998]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Lease_Initial_ExpDT] [datetime] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Total_Leasable_Sq_F] [numeric] (19, 5) NOT NULL,
[BSSI_Jan] [numeric] (19, 5) NOT NULL,
[BSSI_Feb] [numeric] (19, 5) NOT NULL,
[BSSI_Mar] [numeric] (19, 5) NOT NULL,
[BSSI_Apr] [numeric] (19, 5) NOT NULL,
[BSSI_May] [numeric] (19, 5) NOT NULL,
[BSSI_Jun] [numeric] (19, 5) NOT NULL,
[BSSI_Jul] [numeric] (19, 5) NOT NULL,
[BSSI_Aug] [numeric] (19, 5) NOT NULL,
[BSSI_Sep] [numeric] (19, 5) NOT NULL,
[BSSI_Oct] [numeric] (19, 5) NOT NULL,
[BSSI_Nov] [numeric] (19, 5) NOT NULL,
[BSSI_Dec] [numeric] (19, 5) NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4610998] ADD CONSTRAINT [CK__B4610998__BSSI_L__097FB804] CHECK ((datepart(hour,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Initial_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4610998] ADD CONSTRAINT [PKB4610998] PRIMARY KEY NONCLUSTERED  ([BSSI_Charge_ID], [BSSI_PortfolioID], [LOCNCODE], [BSSI_Tenant_Lease_Number], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610998].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610998].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610998].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610998].[BSSI_Tenant_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4610998].[BSSI_Lease_Initial_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610998].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610998].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Total_Leasable_Sq_F]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Jan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Feb]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Mar]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Apr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_May]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Jun]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Jul]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Aug]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Sep]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Oct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Nov]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Dec]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610998].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610998].[USERID]'
GO
GRANT SELECT ON  [dbo].[B4610998] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4610998] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4610998] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4610998] TO [DYNGRP]
GO
