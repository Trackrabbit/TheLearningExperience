CREATE TABLE [dbo].[B4640022]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[BSSI_BuildingExpenses] [numeric] (19, 5) NOT NULL,
[BSSI_BuilldingArea] [numeric] (19, 5) NOT NULL,
[BSSI_LeasedMallArea] [numeric] (19, 5) NOT NULL,
[BSSI_ExteriorLeaseArea] [numeric] (19, 5) NOT NULL,
[BSSI_ExteriorLeasedArea] [numeric] (19, 5) NOT NULL,
[BSSI_InteriorLeaseArea] [numeric] (19, 5) NOT NULL,
[BSSI_InteriorLeasedArea] [numeric] (19, 5) NOT NULL,
[BSSI_InteriorExpense] [numeric] (19, 5) NOT NULL,
[BSSI_ExteriorExpense] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640022] ADD CONSTRAINT [PKB4640022] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640022].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640022].[BSSI_Description2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640022].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640022].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640022].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640022].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_BuildingExpenses]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_BuilldingArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_LeasedMallArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_ExteriorLeaseArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_ExteriorLeasedArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_InteriorLeaseArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_InteriorLeasedArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_InteriorExpense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640022].[BSSI_ExteriorExpense]'
GO
GRANT SELECT ON  [dbo].[B4640022] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640022] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640022] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640022] TO [DYNGRP]
GO
