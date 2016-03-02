SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640018SS_2] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @ENDDATE datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LOCNDSCR, BSSI_Charge_ID, BSSI_Description, LNSEQNBR, CUSTNMBR, CUSTNAME, USERID, STRTDATE, ENDDATE, DATE1, SOPNUMBE, BSSI_RecoverableTypeDisp, BSSI_BPBillFrequency, BSSI_Is_Reversed, BSSI_RecoverableChargeID, BSSI_ChargeLineSeq, BSSI_BreakPointAmt, BSSI_BreakPointPercent, BSSI_BreakpointInPeriod, BSSI_PayablesAmount, BSSI_AmountDue, BSSI_BilledAmount, BSSI_Sales_Amount, BSSI_SalesStartDate, BSSI_SalesEndDate, BSSI_DaysInYear, BSSI_DaysInPeriod, BSSI_Factor, BSSI_ExcessSales, BSSI_BillingAmount, BSSI_RentAmount, BSSI_ExcessAmount, BSSI_PrintProration, BSSI_ProrationFactor, BSSI_DaysInPartialYear, BSSI_PartialYearStart, BSSI_PartialYearEnd, BSSI_ProrateBP, DEX_ROW_ID FROM .B4640018 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND ENDDATE = @ENDDATE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, ENDDATE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640018SS_2] TO [DYNGRP]
GO
