SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610999SI] (@BSSI_PortfolioID char(25), @LOCNCODE char(11), @BSSI_Tenant_Lease_Number char(25), @BSSI_Tenant_Name char(31), @BSSI_Lease_Initial_ExpDT datetime, @BSSI_Charge_ID char(25), @STRTDATE datetime, @BSSI_Sales_Amount numeric(19,5), @USERID char(15), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .B4610999 (BSSI_PortfolioID, LOCNCODE, BSSI_Tenant_Lease_Number, BSSI_Tenant_Name, BSSI_Lease_Initial_ExpDT, BSSI_Charge_ID, STRTDATE, BSSI_Sales_Amount, USERID) VALUES ( @BSSI_PortfolioID, @LOCNCODE, @BSSI_Tenant_Lease_Number, @BSSI_Tenant_Name, @BSSI_Lease_Initial_ExpDT, @BSSI_Charge_ID, @STRTDATE, @BSSI_Sales_Amount, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610999SI] TO [DYNGRP]
GO
