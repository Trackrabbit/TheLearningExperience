SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602943L_5] (@DOCTYPE_RS smallint, @VCHNUMWK_RS char(17), @DOCTYPE_RE smallint, @VCHNUMWK_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_EasementID, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, DOCTYPE, VCHNUMWK, BSSI_Is_Multiple_Invoice, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, MODIFDT, LOCNCODE, JRNENTRY, BSSI_Escalation_Type, DEX_ROW_ID FROM .B4602943 ORDER BY DOCTYPE DESC, VCHNUMWK DESC, DEX_ROW_ID DESC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_EasementID, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, DOCTYPE, VCHNUMWK, BSSI_Is_Multiple_Invoice, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, MODIFDT, LOCNCODE, JRNENTRY, BSSI_Escalation_Type, DEX_ROW_ID FROM .B4602943 WHERE DOCTYPE = @DOCTYPE_RS AND VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE ORDER BY DOCTYPE DESC, VCHNUMWK DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_EasementID, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, DOCTYPE, VCHNUMWK, BSSI_Is_Multiple_Invoice, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, MODIFDT, LOCNCODE, JRNENTRY, BSSI_Escalation_Type, DEX_ROW_ID FROM .B4602943 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE ORDER BY DOCTYPE DESC, VCHNUMWK DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602943L_5] TO [DYNGRP]
GO
