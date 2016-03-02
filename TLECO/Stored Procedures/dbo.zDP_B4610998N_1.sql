SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610998N_1] (@BS int, @BSSI_Charge_ID char(25), @BSSI_PortfolioID char(25), @LOCNCODE char(11), @BSSI_Tenant_Lease_Number char(25), @USERID char(15), @BSSI_Charge_ID_RS char(25), @BSSI_PortfolioID_RS char(25), @LOCNCODE_RS char(11), @BSSI_Tenant_Lease_Number_RS char(25), @USERID_RS char(15), @BSSI_Charge_ID_RE char(25), @BSSI_PortfolioID_RE char(25), @LOCNCODE_RE char(11), @BSSI_Tenant_Lease_Number_RE char(25), @USERID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @BSSI_Charge_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, LOCNCODE, BSSI_Tenant_Lease_Number, BSSI_Tenant_Name, BSSI_Lease_Initial_ExpDT, BSSI_Charge_ID, BSSI_Description, BSSI_Total_Leasable_Sq_F, BSSI_Jan, BSSI_Feb, BSSI_Mar, BSSI_Apr, BSSI_May, BSSI_Jun, BSSI_Jul, BSSI_Aug, BSSI_Sep, BSSI_Oct, BSSI_Nov, BSSI_Dec, BSSI_Sales_Amount, USERID, DEX_ROW_ID FROM .B4610998 WHERE ( BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND USERID > @USERID OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE > @LOCNCODE OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID > @BSSI_PortfolioID OR BSSI_Charge_ID > @BSSI_Charge_ID ) ORDER BY BSSI_Charge_ID ASC, BSSI_PortfolioID ASC, LOCNCODE ASC, BSSI_Tenant_Lease_Number ASC, USERID ASC END ELSE IF @BSSI_Charge_ID_RS = @BSSI_Charge_ID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, LOCNCODE, BSSI_Tenant_Lease_Number, BSSI_Tenant_Name, BSSI_Lease_Initial_ExpDT, BSSI_Charge_ID, BSSI_Description, BSSI_Total_Leasable_Sq_F, BSSI_Jan, BSSI_Feb, BSSI_Mar, BSSI_Apr, BSSI_May, BSSI_Jun, BSSI_Jul, BSSI_Aug, BSSI_Sep, BSSI_Oct, BSSI_Nov, BSSI_Dec, BSSI_Sales_Amount, USERID, DEX_ROW_ID FROM .B4610998 WHERE BSSI_Charge_ID = @BSSI_Charge_ID_RS AND BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND USERID > @USERID OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE > @LOCNCODE OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID > @BSSI_PortfolioID OR BSSI_Charge_ID > @BSSI_Charge_ID ) ORDER BY BSSI_Charge_ID ASC, BSSI_PortfolioID ASC, LOCNCODE ASC, BSSI_Tenant_Lease_Number ASC, USERID ASC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, LOCNCODE, BSSI_Tenant_Lease_Number, BSSI_Tenant_Name, BSSI_Lease_Initial_ExpDT, BSSI_Charge_ID, BSSI_Description, BSSI_Total_Leasable_Sq_F, BSSI_Jan, BSSI_Feb, BSSI_Mar, BSSI_Apr, BSSI_May, BSSI_Jun, BSSI_Jul, BSSI_Aug, BSSI_Sep, BSSI_Oct, BSSI_Nov, BSSI_Dec, BSSI_Sales_Amount, USERID, DEX_ROW_ID FROM .B4610998 WHERE BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND USERID > @USERID OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE > @LOCNCODE OR BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_PortfolioID > @BSSI_PortfolioID OR BSSI_Charge_ID > @BSSI_Charge_ID ) ORDER BY BSSI_Charge_ID ASC, BSSI_PortfolioID ASC, LOCNCODE ASC, BSSI_Tenant_Lease_Number ASC, USERID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610998N_1] TO [DYNGRP]
GO
