SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602218SI] (@BSSI_Ground_Lease_Number char(25), @BSSI_Occupancy_Date datetime, @BSSI_Parking_Stall char(15), @BSSI_Bike_Stall char(15), @BSSI_Storage_Number char(25), @BSSI_Occupancy_Type smallint, @BSSI_Total_Floors int, @BSSI_Total_Leasable_Sq_M numeric(19,5), @BSSI_Total_Leasable_Sq_F numeric(19,5), @BSSI_IsSupplementalAgree tinyint, @BSSI_Is_ProRataShare_Of_ tinyint, @SLPRSNID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602218 (BSSI_Ground_Lease_Number, BSSI_Occupancy_Date, BSSI_Parking_Stall, BSSI_Bike_Stall, BSSI_Storage_Number, BSSI_Occupancy_Type, BSSI_Total_Floors, BSSI_Total_Leasable_Sq_M, BSSI_Total_Leasable_Sq_F, BSSI_IsSupplementalAgree, BSSI_Is_ProRataShare_Of_, SLPRSNID) VALUES ( @BSSI_Ground_Lease_Number, @BSSI_Occupancy_Date, @BSSI_Parking_Stall, @BSSI_Bike_Stall, @BSSI_Storage_Number, @BSSI_Occupancy_Type, @BSSI_Total_Floors, @BSSI_Total_Leasable_Sq_M, @BSSI_Total_Leasable_Sq_F, @BSSI_IsSupplementalAgree, @BSSI_Is_ProRataShare_Of_, @SLPRSNID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602218SI] TO [DYNGRP]
GO
