SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900500N_4] (@BS int, @BSSI_LeaseID char(17), @DEX_ROW_ID int, @BSSI_LeaseID_RS char(17), @BSSI_LeaseID_RE char(17)) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_LeaseID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_First_Reminder, BSSI_First_Reminder_Date, BSSI_Sec_Reminder, BSSI_Sec_Reminder_Date, BSSI_Third_Reminder, BSSI_Third_Reminder_Date, BSSI_Suspend, BSSI_EnableDisbLoan, CHANGEBY_I, CHANGEDATE_I, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_IntrExpAccrAcctIdx, BSSI_IntrIncAccrAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_AccrdIntrIncAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2900500 WHERE ( BSSI_LeaseID = @BSSI_LeaseID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_LeaseID > @BSSI_LeaseID ) ORDER BY BSSI_LeaseID ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_LeaseID_RS = @BSSI_LeaseID_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_First_Reminder, BSSI_First_Reminder_Date, BSSI_Sec_Reminder, BSSI_Sec_Reminder_Date, BSSI_Third_Reminder, BSSI_Third_Reminder_Date, BSSI_Suspend, BSSI_EnableDisbLoan, CHANGEBY_I, CHANGEDATE_I, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_IntrExpAccrAcctIdx, BSSI_IntrIncAccrAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_AccrdIntrIncAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2900500 WHERE BSSI_LeaseID = @BSSI_LeaseID_RS AND ( BSSI_LeaseID = @BSSI_LeaseID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_LeaseID > @BSSI_LeaseID ) ORDER BY BSSI_LeaseID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_First_Reminder, BSSI_First_Reminder_Date, BSSI_Sec_Reminder, BSSI_Sec_Reminder_Date, BSSI_Third_Reminder, BSSI_Third_Reminder_Date, BSSI_Suspend, BSSI_EnableDisbLoan, CHANGEBY_I, CHANGEDATE_I, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_IntrExpAccrAcctIdx, BSSI_IntrIncAccrAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_AccrdIntrIncAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2900500 WHERE BSSI_LeaseID BETWEEN @BSSI_LeaseID_RS AND @BSSI_LeaseID_RE AND ( BSSI_LeaseID = @BSSI_LeaseID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_LeaseID > @BSSI_LeaseID ) ORDER BY BSSI_LeaseID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900500N_4] TO [DYNGRP]
GO
