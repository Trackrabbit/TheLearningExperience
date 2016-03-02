SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602943SS_3] (@BSSI_Ground_Lease_Number char(25), @BSSI_Charge_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_EasementID, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, DOCTYPE, VCHNUMWK, BSSI_Is_Multiple_Invoice, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, MODIFDT, LOCNCODE, JRNENTRY, BSSI_Escalation_Type, DEX_ROW_ID FROM .B4602943 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND BSSI_Charge_ID = @BSSI_Charge_ID ORDER BY BSSI_Ground_Lease_Number ASC, BSSI_Charge_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602943SS_3] TO [DYNGRP]
GO
