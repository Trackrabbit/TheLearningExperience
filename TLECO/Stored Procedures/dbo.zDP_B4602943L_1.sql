SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602943L_1] (@BSSI_Ground_Lease_Number_RS char(25), @LNITMSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @BSSI_Ground_Lease_Number_RE char(25), @LNITMSEQ_RE int, @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Ground_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_EasementID, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, DOCTYPE, VCHNUMWK, BSSI_Is_Multiple_Invoice, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, MODIFDT, LOCNCODE, JRNENTRY, BSSI_Escalation_Type, DEX_ROW_ID FROM .B4602943 ORDER BY BSSI_Ground_Lease_Number DESC, LNITMSEQ DESC, LNSEQNBR DESC END ELSE IF @BSSI_Ground_Lease_Number_RS = @BSSI_Ground_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_EasementID, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, DOCTYPE, VCHNUMWK, BSSI_Is_Multiple_Invoice, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, MODIFDT, LOCNCODE, JRNENTRY, BSSI_Escalation_Type, DEX_ROW_ID FROM .B4602943 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Ground_Lease_Number DESC, LNITMSEQ DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_EasementID, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, DOCTYPE, VCHNUMWK, BSSI_Is_Multiple_Invoice, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, MODIFDT, LOCNCODE, JRNENTRY, BSSI_Escalation_Type, DEX_ROW_ID FROM .B4602943 WHERE BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Ground_Lease_Number DESC, LNITMSEQ DESC, LNSEQNBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602943L_1] TO [DYNGRP]
GO
