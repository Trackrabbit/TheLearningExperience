SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602243F_16] (@SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @BSSI_SOP_LINE_Sequence_RS int, @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint, @BSSI_SOP_LINE_Sequence_RE int) AS /* 12.00.0311.000 */ set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Escalation_Line_Seq, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, SOPTYPE, SOPNUMBE, BSSI_Is_Multiple_Invoice, BSSI_SOP_LINE_Sequence, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, BSSI_Exp_Amount, BSSI_Exp_Adj_Amt, BSSI_Exp_Status, BSSI_Is_Reconciled, MODIFDT, BSSI_LateFeeCharge, BSSI_PercentRent, BSSI_ReversingChargeLine, BSSI_Contributions, BSSI_Term, BSSI_CalculationMethod, BSSI_bOneTimeCharge, BSSI_IsRentAbatement, BSSI_SOPComment, JRNENTRY, BSSI_Escalation_Type, BSSI_ExpReconcile_AP, BSSI_ExpReconcile_AR, VCHRNMBR, DOCTYPE, BSSI_Discount_Amount2, DOCNUM30, BSSI_Dummy, DEX_ROW_ID FROM .B4602243 ORDER BY SOPNUMBE ASC, SOPTYPE ASC, BSSI_SOP_LINE_Sequence ASC, DEX_ROW_ID ASC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Escalation_Line_Seq, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, SOPTYPE, SOPNUMBE, BSSI_Is_Multiple_Invoice, BSSI_SOP_LINE_Sequence, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, BSSI_Exp_Amount, BSSI_Exp_Adj_Amt, BSSI_Exp_Status, BSSI_Is_Reconciled, MODIFDT, BSSI_LateFeeCharge, BSSI_PercentRent, BSSI_ReversingChargeLine, BSSI_Contributions, BSSI_Term, BSSI_CalculationMethod, BSSI_bOneTimeCharge, BSSI_IsRentAbatement, BSSI_SOPComment, JRNENTRY, BSSI_Escalation_Type, BSSI_ExpReconcile_AP, BSSI_ExpReconcile_AR, VCHRNMBR, DOCTYPE, BSSI_Discount_Amount2, DOCNUM30, BSSI_Dummy, DEX_ROW_ID FROM .B4602243 WHERE SOPNUMBE = @SOPNUMBE_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND BSSI_SOP_LINE_Sequence BETWEEN @BSSI_SOP_LINE_Sequence_RS AND @BSSI_SOP_LINE_Sequence_RE ORDER BY SOPNUMBE ASC, SOPTYPE ASC, BSSI_SOP_LINE_Sequence ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Escalation_Line_Seq, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, SOPTYPE, SOPNUMBE, BSSI_Is_Multiple_Invoice, BSSI_SOP_LINE_Sequence, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, BSSI_Exp_Amount, BSSI_Exp_Adj_Amt, BSSI_Exp_Status, BSSI_Is_Reconciled, MODIFDT, BSSI_LateFeeCharge, BSSI_PercentRent, BSSI_ReversingChargeLine, BSSI_Contributions, BSSI_Term, BSSI_CalculationMethod, BSSI_bOneTimeCharge, BSSI_IsRentAbatement, BSSI_SOPComment, JRNENTRY, BSSI_Escalation_Type, BSSI_ExpReconcile_AP, BSSI_ExpReconcile_AR, VCHRNMBR, DOCTYPE, BSSI_Discount_Amount2, DOCNUM30, BSSI_Dummy, DEX_ROW_ID FROM .B4602243 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND BSSI_SOP_LINE_Sequence BETWEEN @BSSI_SOP_LINE_Sequence_RS AND @BSSI_SOP_LINE_Sequence_RE ORDER BY SOPNUMBE ASC, SOPTYPE ASC, BSSI_SOP_LINE_Sequence ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602243F_16] TO [DYNGRP]
GO
