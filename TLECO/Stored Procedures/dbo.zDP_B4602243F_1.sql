SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602243F_1] (@BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @LNITMSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @LNITMSEQ_RE int, @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Escalation_Line_Seq, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, SOPTYPE, SOPNUMBE, BSSI_Is_Multiple_Invoice, BSSI_SOP_LINE_Sequence, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, BSSI_Exp_Amount, BSSI_Exp_Adj_Amt, BSSI_Exp_Status, BSSI_Is_Reconciled, MODIFDT, BSSI_LateFeeCharge, BSSI_PercentRent, BSSI_ReversingChargeLine, BSSI_Contributions, BSSI_Term, BSSI_CalculationMethod, BSSI_bOneTimeCharge, BSSI_IsRentAbatement, BSSI_SOPComment, JRNENTRY, BSSI_Escalation_Type, BSSI_ExpReconcile_AP, BSSI_ExpReconcile_AR, VCHRNMBR, DOCTYPE, BSSI_Discount_Amount2, DOCNUM30, BSSI_Dummy, DEX_ROW_ID FROM .B4602243 ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Escalation_Line_Seq, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, SOPTYPE, SOPNUMBE, BSSI_Is_Multiple_Invoice, BSSI_SOP_LINE_Sequence, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, BSSI_Exp_Amount, BSSI_Exp_Adj_Amt, BSSI_Exp_Status, BSSI_Is_Reconciled, MODIFDT, BSSI_LateFeeCharge, BSSI_PercentRent, BSSI_ReversingChargeLine, BSSI_Contributions, BSSI_Term, BSSI_CalculationMethod, BSSI_bOneTimeCharge, BSSI_IsRentAbatement, BSSI_SOPComment, JRNENTRY, BSSI_Escalation_Type, BSSI_ExpReconcile_AP, BSSI_ExpReconcile_AR, VCHRNMBR, DOCTYPE, BSSI_Discount_Amount2, DOCNUM30, BSSI_Dummy, DEX_ROW_ID FROM .B4602243 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Escalation_Line_Seq, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, SOPTYPE, SOPNUMBE, BSSI_Is_Multiple_Invoice, BSSI_SOP_LINE_Sequence, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, BSSI_Exp_Amount, BSSI_Exp_Adj_Amt, BSSI_Exp_Status, BSSI_Is_Reconciled, MODIFDT, BSSI_LateFeeCharge, BSSI_PercentRent, BSSI_ReversingChargeLine, BSSI_Contributions, BSSI_Term, BSSI_CalculationMethod, BSSI_bOneTimeCharge, BSSI_IsRentAbatement, BSSI_SOPComment, JRNENTRY, BSSI_Escalation_Type, BSSI_ExpReconcile_AP, BSSI_ExpReconcile_AR, VCHRNMBR, DOCTYPE, BSSI_Discount_Amount2, DOCNUM30, BSSI_Dummy, DEX_ROW_ID FROM .B4602243 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602243F_1] TO [DYNGRP]
GO
