SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930500UN_6] (@BS int, @CUSTNMBR char(15), @CUSTNMBR_RS char(15), @CUSTNMBR_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_TotalPaidAmt, BSSI_PrincipalBalance, BSSI_ExtraChargeBalance, BSSI_DuePayments, BSSI_DocumentNumber, NETAMNT, BSSI_Orig_Total_Due_Amt, BSSI_ProrateIntCalcDate, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, BSSI_Foreclosure_Amt, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_EnableDisbLoan, BSSI_Suspend, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2930500 WHERE ( CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_TotalPaidAmt, BSSI_PrincipalBalance, BSSI_ExtraChargeBalance, BSSI_DuePayments, BSSI_DocumentNumber, NETAMNT, BSSI_Orig_Total_Due_Amt, BSSI_ProrateIntCalcDate, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, BSSI_Foreclosure_Amt, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_EnableDisbLoan, BSSI_Suspend, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2930500 WHERE CUSTNMBR = @CUSTNMBR_RS AND ( CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_TotalPaidAmt, BSSI_PrincipalBalance, BSSI_ExtraChargeBalance, BSSI_DuePayments, BSSI_DocumentNumber, NETAMNT, BSSI_Orig_Total_Due_Amt, BSSI_ProrateIntCalcDate, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, BSSI_Foreclosure_Amt, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_EnableDisbLoan, BSSI_Suspend, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2930500 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ( CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930500UN_6] TO [DYNGRP]
GO
