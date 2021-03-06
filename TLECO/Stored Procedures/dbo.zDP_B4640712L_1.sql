SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640712L_1] (@LOCNCODE_RS char(11), @LOCNCODE_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, BSSI_Site_Reference, BSSI_Site_Floor_Level, BSSI_Occupancy_Type, BSSI_Renovation_Date, BSSI_Total_Sq_Meters, BSSI_Total_Leasable_Sq_M, BSSI_Rent_By_Sq_Meter, BSSI_Total_Sq_Ft, BSSI_Total_Leasable_Sq_F, BSSI_Rent_By_Sq_Feet, BSSI_nMarketRent, NOTEINDX, DEX_ROW_ID FROM .B4640712 ORDER BY LOCNCODE DESC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, BSSI_Site_Reference, BSSI_Site_Floor_Level, BSSI_Occupancy_Type, BSSI_Renovation_Date, BSSI_Total_Sq_Meters, BSSI_Total_Leasable_Sq_M, BSSI_Rent_By_Sq_Meter, BSSI_Total_Sq_Ft, BSSI_Total_Leasable_Sq_F, BSSI_Rent_By_Sq_Feet, BSSI_nMarketRent, NOTEINDX, DEX_ROW_ID FROM .B4640712 WHERE LOCNCODE = @LOCNCODE_RS ORDER BY LOCNCODE DESC END ELSE BEGIN SELECT TOP 25  LOCNCODE, BSSI_Site_Reference, BSSI_Site_Floor_Level, BSSI_Occupancy_Type, BSSI_Renovation_Date, BSSI_Total_Sq_Meters, BSSI_Total_Leasable_Sq_M, BSSI_Rent_By_Sq_Meter, BSSI_Total_Sq_Ft, BSSI_Total_Leasable_Sq_F, BSSI_Rent_By_Sq_Feet, BSSI_nMarketRent, NOTEINDX, DEX_ROW_ID FROM .B4640712 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY LOCNCODE DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640712L_1] TO [DYNGRP]
GO
