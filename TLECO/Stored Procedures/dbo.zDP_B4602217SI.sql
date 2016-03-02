SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602217SI] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Occupancy_Date datetime, @BSSI_Parking_Stall char(15), @BSSI_Bike_Stall char(15), @BSSI_Storage_Number char(25), @BSSI_Occupancy_Type smallint, @BSSI_Total_Floors int, @BSSI_Total_Leasable_Sq_M numeric(19,5), @BSSI_Total_Leasable_Sq_F numeric(19,5), @SLPRSNID char(15), @BSSI_IsSupplementalAgree tinyint, @BSSI_Is_ProRataShare_Of_ tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602217 (BSSI_Tenant_Lease_Number, BSSI_Occupancy_Date, BSSI_Parking_Stall, BSSI_Bike_Stall, BSSI_Storage_Number, BSSI_Occupancy_Type, BSSI_Total_Floors, BSSI_Total_Leasable_Sq_M, BSSI_Total_Leasable_Sq_F, SLPRSNID, BSSI_IsSupplementalAgree, BSSI_Is_ProRataShare_Of_) VALUES ( @BSSI_Tenant_Lease_Number, @BSSI_Occupancy_Date, @BSSI_Parking_Stall, @BSSI_Bike_Stall, @BSSI_Storage_Number, @BSSI_Occupancy_Type, @BSSI_Total_Floors, @BSSI_Total_Leasable_Sq_M, @BSSI_Total_Leasable_Sq_F, @SLPRSNID, @BSSI_IsSupplementalAgree, @BSSI_Is_ProRataShare_Of_) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602217SI] TO [DYNGRP]
GO
