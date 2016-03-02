SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640712SI] (@LOCNCODE char(11), @BSSI_Site_Reference char(25), @BSSI_Site_Floor_Level char(15), @BSSI_Occupancy_Type smallint, @BSSI_Renovation_Date datetime, @BSSI_Total_Sq_Meters numeric(19,5), @BSSI_Total_Leasable_Sq_M numeric(19,5), @BSSI_Rent_By_Sq_Meter numeric(19,5), @BSSI_Total_Sq_Ft numeric(19,5), @BSSI_Total_Leasable_Sq_F numeric(19,5), @BSSI_Rent_By_Sq_Feet numeric(19,5), @BSSI_nMarketRent numeric(19,5), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640712 (LOCNCODE, BSSI_Site_Reference, BSSI_Site_Floor_Level, BSSI_Occupancy_Type, BSSI_Renovation_Date, BSSI_Total_Sq_Meters, BSSI_Total_Leasable_Sq_M, BSSI_Rent_By_Sq_Meter, BSSI_Total_Sq_Ft, BSSI_Total_Leasable_Sq_F, BSSI_Rent_By_Sq_Feet, BSSI_nMarketRent, NOTEINDX) VALUES ( @LOCNCODE, @BSSI_Site_Reference, @BSSI_Site_Floor_Level, @BSSI_Occupancy_Type, @BSSI_Renovation_Date, @BSSI_Total_Sq_Meters, @BSSI_Total_Leasable_Sq_M, @BSSI_Rent_By_Sq_Meter, @BSSI_Total_Sq_Ft, @BSSI_Total_Leasable_Sq_F, @BSSI_Rent_By_Sq_Feet, @BSSI_nMarketRent, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640712SI] TO [DYNGRP]
GO
