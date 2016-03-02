SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602217L_1] (@BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Occupancy_Date, BSSI_Parking_Stall, BSSI_Bike_Stall, BSSI_Storage_Number, BSSI_Occupancy_Type, BSSI_Total_Floors, BSSI_Total_Leasable_Sq_M, BSSI_Total_Leasable_Sq_F, SLPRSNID, BSSI_IsSupplementalAgree, BSSI_Is_ProRataShare_Of_, DEX_ROW_ID FROM .B4602217 ORDER BY BSSI_Tenant_Lease_Number DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Occupancy_Date, BSSI_Parking_Stall, BSSI_Bike_Stall, BSSI_Storage_Number, BSSI_Occupancy_Type, BSSI_Total_Floors, BSSI_Total_Leasable_Sq_M, BSSI_Total_Leasable_Sq_F, SLPRSNID, BSSI_IsSupplementalAgree, BSSI_Is_ProRataShare_Of_, DEX_ROW_ID FROM .B4602217 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS ORDER BY BSSI_Tenant_Lease_Number DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Occupancy_Date, BSSI_Parking_Stall, BSSI_Bike_Stall, BSSI_Storage_Number, BSSI_Occupancy_Type, BSSI_Total_Floors, BSSI_Total_Leasable_Sq_M, BSSI_Total_Leasable_Sq_F, SLPRSNID, BSSI_IsSupplementalAgree, BSSI_Is_ProRataShare_Of_, DEX_ROW_ID FROM .B4602217 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE ORDER BY BSSI_Tenant_Lease_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602217L_1] TO [DYNGRP]
GO
