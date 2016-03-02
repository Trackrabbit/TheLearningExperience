SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4694000SI] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Tenant_Lease_Status smallint, @BSSI_Lease_Status_STR char(255), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_Site_Status smallint, @BSSI_Site_Acquisition_Da datetime, @CUSTNMBR char(15), @BSSI_Billing_Frequency smallint, @BSSI_Charge_Escalation_A numeric(19,5), @BSSI_PrevCharge_EscAmt numeric(19,5), @BSSI_Charge_EscAmtDiff numeric(19,5), @STATE char(29), @BSSI_Region_ID char(25), @BSSI_Monthly_Rent_Roll numeric(19,5), @BSSI_Annual_Rent_Roll numeric(19,5), @LOCNDSCR char(31), @BSSI_Description char(51), @BSSI_PortfolioID char(25), @STRTDATE datetime, @ENDDATE datetime, @BSSI_Total_Leasable_Sq_F numeric(19,5), @BSSI_Total_Leasable_Sq_M numeric(19,5), @NAME char(31), @BSSI_Description1 char(51), @CUSTNAME char(65), @BSSI_Rate numeric(19,5), @BSSI_Leased_Space_SF numeric(19,5), @BSSI_Leased_Space_SM numeric(19,5), @BSSI_Deposit_Rent numeric(19,5), @BSSI_Site_TypeID char(25), @BSSI_nMarketRent numeric(19,5), @BSSI_Rent_Commencement_D datetime, @BSSI_Lease_Final_ExpDT datetime, @BSSI_Lease_Termination_D datetime, @BSSI_strMasterChargeID char(25), @BSSI_Is_Vacant tinyint, @BSSI_nTBDSqFeetActive numeric(19,5), @BSSI_nTBDSqFeetOther numeric(19,5), @BSSI_nTBDMarkRentActive numeric(19,5), @BSSI_nTBDMarkRentOther numeric(19,5), @BSSI_nTBDUnitsActive numeric(19,5), @BSSI_nTBDUnitsOther numeric(19,5), @CUSTBLNC numeric(19,5), @BSSI_nTBDUnits numeric(19,5), @BSSI_nTBDUnitSqFeet numeric(19,5), @BSSI_nTBDSqFeetOccActive numeric(19,5), @BSSI_nTBDSqFeetOccOther numeric(19,5), @BSSI_nTBDUnitOccActive numeric(19,5), @BSSI_nTBDUnitOccOther numeric(19,5), @DUMYRCRD tinyint, @USERID char(15), @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4694000 (BSSI_Tenant_Lease_Number, BSSI_Tenant_Lease_Status, BSSI_Lease_Status_STR, LOCNCODE, BSSI_Charge_ID, BSSI_Site_Status, BSSI_Site_Acquisition_Da, CUSTNMBR, BSSI_Billing_Frequency, BSSI_Charge_Escalation_A, BSSI_PrevCharge_EscAmt, BSSI_Charge_EscAmtDiff, STATE, BSSI_Region_ID, BSSI_Monthly_Rent_Roll, BSSI_Annual_Rent_Roll, LOCNDSCR, BSSI_Description, BSSI_PortfolioID, STRTDATE, ENDDATE, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, NAME, BSSI_Description1, CUSTNAME, BSSI_Rate, BSSI_Leased_Space_SF, BSSI_Leased_Space_SM, BSSI_Deposit_Rent, BSSI_Site_TypeID, BSSI_nMarketRent, BSSI_Rent_Commencement_D, BSSI_Lease_Final_ExpDT, BSSI_Lease_Termination_D, BSSI_strMasterChargeID, BSSI_Is_Vacant, BSSI_nTBDSqFeetActive, BSSI_nTBDSqFeetOther, BSSI_nTBDMarkRentActive, BSSI_nTBDMarkRentOther, BSSI_nTBDUnitsActive, BSSI_nTBDUnitsOther, CUSTBLNC, BSSI_nTBDUnits, BSSI_nTBDUnitSqFeet, BSSI_nTBDSqFeetOccActive, BSSI_nTBDSqFeetOccOther, BSSI_nTBDUnitOccActive, BSSI_nTBDUnitOccOther, DUMYRCRD, USERID, BSSI_Dummy) VALUES ( @BSSI_Tenant_Lease_Number, @BSSI_Tenant_Lease_Status, @BSSI_Lease_Status_STR, @LOCNCODE, @BSSI_Charge_ID, @BSSI_Site_Status, @BSSI_Site_Acquisition_Da, @CUSTNMBR, @BSSI_Billing_Frequency, @BSSI_Charge_Escalation_A, @BSSI_PrevCharge_EscAmt, @BSSI_Charge_EscAmtDiff, @STATE, @BSSI_Region_ID, @BSSI_Monthly_Rent_Roll, @BSSI_Annual_Rent_Roll, @LOCNDSCR, @BSSI_Description, @BSSI_PortfolioID, @STRTDATE, @ENDDATE, @BSSI_Total_Leasable_Sq_F, @BSSI_Total_Leasable_Sq_M, @NAME, @BSSI_Description1, @CUSTNAME, @BSSI_Rate, @BSSI_Leased_Space_SF, @BSSI_Leased_Space_SM, @BSSI_Deposit_Rent, @BSSI_Site_TypeID, @BSSI_nMarketRent, @BSSI_Rent_Commencement_D, @BSSI_Lease_Final_ExpDT, @BSSI_Lease_Termination_D, @BSSI_strMasterChargeID, @BSSI_Is_Vacant, @BSSI_nTBDSqFeetActive, @BSSI_nTBDSqFeetOther, @BSSI_nTBDMarkRentActive, @BSSI_nTBDMarkRentOther, @BSSI_nTBDUnitsActive, @BSSI_nTBDUnitsOther, @CUSTBLNC, @BSSI_nTBDUnits, @BSSI_nTBDUnitSqFeet, @BSSI_nTBDSqFeetOccActive, @BSSI_nTBDSqFeetOccOther, @BSSI_nTBDUnitOccActive, @BSSI_nTBDUnitOccOther, @DUMYRCRD, @USERID, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4694000SI] TO [DYNGRP]
GO