SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610999SS_1] (@BSSI_PortfolioID char(25), @LOCNCODE char(11), @BSSI_Tenant_Lease_Number char(25), @BSSI_Charge_ID char(25), @STRTDATE datetime, @USERID char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, LOCNCODE, BSSI_Tenant_Lease_Number, BSSI_Tenant_Name, BSSI_Lease_Initial_ExpDT, BSSI_Charge_ID, STRTDATE, BSSI_Sales_Amount, USERID, DEX_ROW_ID FROM .B4610999 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Charge_ID = @BSSI_Charge_ID AND STRTDATE = @STRTDATE AND USERID = @USERID ORDER BY BSSI_PortfolioID ASC, LOCNCODE ASC, BSSI_Tenant_Lease_Number ASC, BSSI_Charge_ID ASC, STRTDATE ASC, USERID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610999SS_1] TO [DYNGRP]
GO
