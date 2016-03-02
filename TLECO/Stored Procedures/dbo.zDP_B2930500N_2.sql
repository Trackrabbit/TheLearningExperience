SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930500N_2] (@BS int, @SCHEDULE_NUMBER char(21), @BSSI_Lease_Loan_Number char(17), @SCHEDULE_NUMBER_RS char(21), @BSSI_Lease_Loan_Number_RS char(17), @SCHEDULE_NUMBER_RE char(21), @BSSI_Lease_Loan_Number_RE char(17)) AS /* 12.00.0311.000 */ set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_TotalPaidAmt, BSSI_PrincipalBalance, BSSI_ExtraChargeBalance, BSSI_DuePayments, BSSI_DocumentNumber, NETAMNT, BSSI_Orig_Total_Due_Amt, BSSI_ProrateIntCalcDate, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, BSSI_Foreclosure_Amt, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_EnableDisbLoan, BSSI_Suspend, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2930500 WHERE ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, BSSI_Lease_Loan_Number ASC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_TotalPaidAmt, BSSI_PrincipalBalance, BSSI_ExtraChargeBalance, BSSI_DuePayments, BSSI_DocumentNumber, NETAMNT, BSSI_Orig_Total_Due_Amt, BSSI_ProrateIntCalcDate, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, BSSI_Foreclosure_Amt, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_EnableDisbLoan, BSSI_Suspend, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2930500 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS AND BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, BSSI_Lease_Loan_Number ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_TotalPaidAmt, BSSI_PrincipalBalance, BSSI_ExtraChargeBalance, BSSI_DuePayments, BSSI_DocumentNumber, NETAMNT, BSSI_Orig_Total_Due_Amt, BSSI_ProrateIntCalcDate, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, BSSI_Foreclosure_Amt, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_EnableDisbLoan, BSSI_Suspend, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2930500 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, BSSI_Lease_Loan_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930500N_2] TO [DYNGRP]
GO
