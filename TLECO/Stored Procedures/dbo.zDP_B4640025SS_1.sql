SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640025SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LOCNDSCR, BSSI_Charge_ID, BSSI_Description, LNITMSEQ, LNSEQNBR, CUSTNMBR, CUSTNAME, BSSI_BreakPointAmt, BSSI_BreakPointPercent, BSSI_PayablesAmount, BSSI_AmountDue, BSSI_BilledAmount, BSSI_Sales_Amount, BSSI_SalesStartDate, BSSI_SalesEndDate, BSSI_ExcessSales, BSSI_BillingAmount, BSSI_DaysInPeriod, BSSI_DaysInYear, BSSI_Factor, BSSI_BreakpointInPeriod, DEX_ROW_ID FROM .B4640025 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND LNSEQNBR = @LNSEQNBR AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, LNSEQNBR ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640025SS_1] TO [DYNGRP]
GO
