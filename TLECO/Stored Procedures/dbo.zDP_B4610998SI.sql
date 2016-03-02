SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610998SI] (@BSSI_PortfolioID char(25), @LOCNCODE char(11), @BSSI_Tenant_Lease_Number char(25), @BSSI_Tenant_Name char(31), @BSSI_Lease_Initial_ExpDT datetime, @BSSI_Charge_ID char(25), @BSSI_Description char(51), @BSSI_Total_Leasable_Sq_F numeric(19,5), @BSSI_Jan numeric(19,5), @BSSI_Feb numeric(19,5), @BSSI_Mar numeric(19,5), @BSSI_Apr numeric(19,5), @BSSI_May numeric(19,5), @BSSI_Jun numeric(19,5), @BSSI_Jul numeric(19,5), @BSSI_Aug numeric(19,5), @BSSI_Sep numeric(19,5), @BSSI_Oct numeric(19,5), @BSSI_Nov numeric(19,5), @BSSI_Dec numeric(19,5), @BSSI_Sales_Amount numeric(19,5), @USERID char(15), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .B4610998 (BSSI_PortfolioID, LOCNCODE, BSSI_Tenant_Lease_Number, BSSI_Tenant_Name, BSSI_Lease_Initial_ExpDT, BSSI_Charge_ID, BSSI_Description, BSSI_Total_Leasable_Sq_F, BSSI_Jan, BSSI_Feb, BSSI_Mar, BSSI_Apr, BSSI_May, BSSI_Jun, BSSI_Jul, BSSI_Aug, BSSI_Sep, BSSI_Oct, BSSI_Nov, BSSI_Dec, BSSI_Sales_Amount, USERID) VALUES ( @BSSI_PortfolioID, @LOCNCODE, @BSSI_Tenant_Lease_Number, @BSSI_Tenant_Name, @BSSI_Lease_Initial_ExpDT, @BSSI_Charge_ID, @BSSI_Description, @BSSI_Total_Leasable_Sq_F, @BSSI_Jan, @BSSI_Feb, @BSSI_Mar, @BSSI_Apr, @BSSI_May, @BSSI_Jun, @BSSI_Jul, @BSSI_Aug, @BSSI_Sep, @BSSI_Oct, @BSSI_Nov, @BSSI_Dec, @BSSI_Sales_Amount, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610998SI] TO [DYNGRP]
GO
