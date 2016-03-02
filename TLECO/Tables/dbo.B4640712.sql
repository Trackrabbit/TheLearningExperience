CREATE TABLE [dbo].[B4640712]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Reference] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Floor_Level] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Occupancy_Type] [smallint] NOT NULL,
[BSSI_Renovation_Date] [datetime] NOT NULL,
[BSSI_Total_Sq_Meters] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Leasable_Sq_M] [numeric] (19, 5) NOT NULL,
[BSSI_Rent_By_Sq_Meter] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Sq_Ft] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Leasable_Sq_F] [numeric] (19, 5) NOT NULL,
[BSSI_Rent_By_Sq_Feet] [numeric] (19, 5) NOT NULL,
[BSSI_nMarketRent] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640712] ADD CONSTRAINT [CK__B4640712__BSSI_R__42A092F8] CHECK ((datepart(hour,[BSSI_Renovation_Date])=(0) AND datepart(minute,[BSSI_Renovation_Date])=(0) AND datepart(second,[BSSI_Renovation_Date])=(0) AND datepart(millisecond,[BSSI_Renovation_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640712] ADD CONSTRAINT [PKB4640712] PRIMARY KEY NONCLUSTERED  ([LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640712].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640712].[BSSI_Site_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640712].[BSSI_Site_Floor_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640712].[BSSI_Occupancy_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640712].[BSSI_Renovation_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640712].[BSSI_Total_Sq_Meters]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640712].[BSSI_Total_Leasable_Sq_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640712].[BSSI_Rent_By_Sq_Meter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640712].[BSSI_Total_Sq_Ft]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640712].[BSSI_Total_Leasable_Sq_F]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640712].[BSSI_Rent_By_Sq_Feet]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640712].[BSSI_nMarketRent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640712].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4640712] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640712] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640712] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640712] TO [DYNGRP]
GO
