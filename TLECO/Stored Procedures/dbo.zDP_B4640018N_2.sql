SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640018N_2] (@BS int, @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @ENDDATE datetime, @DEX_ROW_ID int, @BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_Charge_ID_RS char(25), @ENDDATE_RS datetime, @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_Charge_ID_RE char(25), @ENDDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LOCNDSCR, BSSI_Charge_ID, BSSI_Description, LNSEQNBR, CUSTNMBR, CUSTNAME, USERID, STRTDATE, ENDDATE, DATE1, SOPNUMBE, BSSI_RecoverableTypeDisp, BSSI_BPBillFrequency, BSSI_Is_Reversed, BSSI_RecoverableChargeID, BSSI_ChargeLineSeq, BSSI_BreakPointAmt, BSSI_BreakPointPercent, BSSI_BreakpointInPeriod, BSSI_PayablesAmount, BSSI_AmountDue, BSSI_BilledAmount, BSSI_Sales_Amount, BSSI_SalesStartDate, BSSI_SalesEndDate, BSSI_DaysInYear, BSSI_DaysInPeriod, BSSI_Factor, BSSI_ExcessSales, BSSI_BillingAmount, BSSI_RentAmount, BSSI_ExcessAmount, BSSI_PrintProration, BSSI_ProrationFactor, BSSI_DaysInPartialYear, BSSI_PartialYearStart, BSSI_PartialYearEnd, BSSI_ProrateBP, DEX_ROW_ID FROM .B4640018 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND ENDDATE > @ENDDATE OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, ENDDATE ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LOCNDSCR, BSSI_Charge_ID, BSSI_Description, LNSEQNBR, CUSTNMBR, CUSTNAME, USERID, STRTDATE, ENDDATE, DATE1, SOPNUMBE, BSSI_RecoverableTypeDisp, BSSI_BPBillFrequency, BSSI_Is_Reversed, BSSI_RecoverableChargeID, BSSI_ChargeLineSeq, BSSI_BreakPointAmt, BSSI_BreakPointPercent, BSSI_BreakpointInPeriod, BSSI_PayablesAmount, BSSI_AmountDue, BSSI_BilledAmount, BSSI_Sales_Amount, BSSI_SalesStartDate, BSSI_SalesEndDate, BSSI_DaysInYear, BSSI_DaysInPeriod, BSSI_Factor, BSSI_ExcessSales, BSSI_BillingAmount, BSSI_RentAmount, BSSI_ExcessAmount, BSSI_PrintProration, BSSI_ProrationFactor, BSSI_DaysInPartialYear, BSSI_PartialYearStart, BSSI_PartialYearEnd, BSSI_ProrateBP, DEX_ROW_ID FROM .B4640018 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND ENDDATE > @ENDDATE OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, ENDDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LOCNDSCR, BSSI_Charge_ID, BSSI_Description, LNSEQNBR, CUSTNMBR, CUSTNAME, USERID, STRTDATE, ENDDATE, DATE1, SOPNUMBE, BSSI_RecoverableTypeDisp, BSSI_BPBillFrequency, BSSI_Is_Reversed, BSSI_RecoverableChargeID, BSSI_ChargeLineSeq, BSSI_BreakPointAmt, BSSI_BreakPointPercent, BSSI_BreakpointInPeriod, BSSI_PayablesAmount, BSSI_AmountDue, BSSI_BilledAmount, BSSI_Sales_Amount, BSSI_SalesStartDate, BSSI_SalesEndDate, BSSI_DaysInYear, BSSI_DaysInPeriod, BSSI_Factor, BSSI_ExcessSales, BSSI_BillingAmount, BSSI_RentAmount, BSSI_ExcessAmount, BSSI_PrintProration, BSSI_ProrationFactor, BSSI_DaysInPartialYear, BSSI_PartialYearStart, BSSI_PartialYearEnd, BSSI_ProrateBP, DEX_ROW_ID FROM .B4640018 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND ENDDATE > @ENDDATE OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, ENDDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640018N_2] TO [DYNGRP]
GO
