SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4694000SS_3] (@USERID char(15), @BSSI_PortfolioID char(25), @CUSTNMBR char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, BSSI_Tenant_Lease_Status, BSSI_Lease_Status_STR, LOCNCODE, BSSI_Charge_ID, BSSI_Site_Status, BSSI_Site_Acquisition_Da, CUSTNMBR, BSSI_Billing_Frequency, BSSI_Charge_Escalation_A, BSSI_PrevCharge_EscAmt, BSSI_Charge_EscAmtDiff, STATE, BSSI_Region_ID, BSSI_Monthly_Rent_Roll, BSSI_Annual_Rent_Roll, LOCNDSCR, BSSI_Description, BSSI_PortfolioID, STRTDATE, ENDDATE, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, NAME, BSSI_Description1, CUSTNAME, BSSI_Rate, BSSI_Leased_Space_SF, BSSI_Leased_Space_SM, BSSI_Deposit_Rent, BSSI_Site_TypeID, BSSI_nMarketRent, BSSI_Rent_Commencement_D, BSSI_Lease_Final_ExpDT, BSSI_Lease_Termination_D, BSSI_strMasterChargeID, BSSI_Is_Vacant, BSSI_nTBDSqFeetActive, BSSI_nTBDSqFeetOther, BSSI_nTBDMarkRentActive, BSSI_nTBDMarkRentOther, BSSI_nTBDUnitsActive, BSSI_nTBDUnitsOther, CUSTBLNC, BSSI_nTBDUnits, BSSI_nTBDUnitSqFeet, BSSI_nTBDSqFeetOccActive, BSSI_nTBDSqFeetOccOther, BSSI_nTBDUnitOccActive, BSSI_nTBDUnitOccOther, DUMYRCRD, USERID, BSSI_Dummy, DEX_ROW_ID FROM .B4694000 WHERE USERID = @USERID AND BSSI_PortfolioID = @BSSI_PortfolioID AND CUSTNMBR = @CUSTNMBR ORDER BY USERID ASC, BSSI_PortfolioID ASC, CUSTNMBR ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4694000SS_3] TO [DYNGRP]
GO
