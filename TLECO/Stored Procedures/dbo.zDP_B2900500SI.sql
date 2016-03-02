SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900500SI] (@BSSI_Lease_Loan_Number char(17), @BSSI_Description char(51), @SCHEDULE_NUMBER char(21), @ORIG_DOC_NUMBER char(21), @CUSTNMBR char(15), @EMPLOYID char(15), @ADRSCODE char(15), @SLPRSNID char(15), @SALSTERR char(15), @SLSAMNT numeric(19,5), @TRDISAMT numeric(19,5), @FRTAMNT numeric(19,5), @MISCAMNT numeric(19,5), @TAXAMNT numeric(19,5), @DOCAMNT numeric(19,5), @BACHNUMB char(15), @DOCDATE datetime, @PYMTRMID char(21), @TAXSCHID char(15), @CASHAMNT numeric(19,5), @CHEKAMNT numeric(19,5), @CRDTAMNT numeric(19,5), @SCHEDULE_INT_TYPE1 smallint, @SCHEDULE_INT_RATE int, @STRTDATE datetime, @FIRST_INV_DOC_DATE datetime, @BSSI_Rev_Source_ID char(25), @BSSI_Recog_TemplateID char(25), @PAYMENT_AMOUNT numeric(19,5), @BSSI_Lease_Loan_Status smallint, @NOTEINDX numeric(19,5), @DCNUMCSH char(21), @DCNUMCHK char(21), @DCNUMCRD char(21), @ACCTAMNT numeric(19,5), @BSSI_LeaseID char(17), @NUM_PAYMENTS smallint, @BSSI_CalculatedDeferralA numeric(19,5), @REC_OFFSET_ACCT_IDX int, @PYMTTYPE smallint, @BSSI_cTotalChargeAmt numeric(19,5), @BSSI_EnableNegativeAmort tinyint, @BSSI_AccrualsAcctIdx int, @REC_ACCT_IDX int, @INT_INCOME_ACCT_IDX int, @BSSI_DefferalInterestInd int, @BSSI_DeductionAcctIdx int, @BSSI_DefferalPrincplINDX int, @BSSI_DefferalChargeINDX int, @SLSINDX int, @BSSI_LeaseLoanType char(7), @CLASSID char(15), @BSSI_EnableLoanPayrollLi tinyint, @BSSI_Facility_ID char(67), @BSSI_dReCalculateDate datetime, @BSSI_cProRatedIntAmt numeric(19,5), @BSSI_cUnUsdPRatedIntAmt numeric(19,5), @BSSI_First_Reminder tinyint, @BSSI_First_Reminder_Date datetime, @BSSI_Sec_Reminder tinyint, @BSSI_Sec_Reminder_Date datetime, @BSSI_Third_Reminder tinyint, @BSSI_Third_Reminder_Date datetime, @BSSI_Suspend tinyint, @BSSI_EnableDisbLoan tinyint, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @BSSI_PayrollComment char(51), @BSSI_EnableDeferralFunct tinyint, @BSSI_EnableDeferCharge tinyint, @BSSI_EnableDeferPrincipa tinyint, @BSSI_EnableDeferInterest tinyint, @BSSI_EnableLinkToARDoc tinyint, @BSSI_cProRatedXtraChgAmt numeric(19,5), @BSSI_ProratedDays smallint, @PAY_ACCT_IDX int, @PAY_OFFSET_ACCT_IDX int, @INT_EXP_ACCT_IDX int, @BSSI_IntrExpAccrAcctIdx int, @BSSI_IntrIncAccrAcctIdx int, @BSSI_AccrdIntrExpAcctIdx int, @BSSI_AccrdIntrIncAcctIdx int, @BSSI_InterestMethod smallint, @BSSI_RecalculateInterest tinyint, @BSSI_LoanDisbursementIND int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2900500 (BSSI_Lease_Loan_Number, BSSI_Description, SCHEDULE_NUMBER, ORIG_DOC_NUMBER, CUSTNMBR, EMPLOYID, ADRSCODE, SLPRSNID, SALSTERR, SLSAMNT, TRDISAMT, FRTAMNT, MISCAMNT, TAXAMNT, DOCAMNT, BACHNUMB, DOCDATE, PYMTRMID, TAXSCHID, CASHAMNT, CHEKAMNT, CRDTAMNT, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, STRTDATE, FIRST_INV_DOC_DATE, BSSI_Rev_Source_ID, BSSI_Recog_TemplateID, PAYMENT_AMOUNT, BSSI_Lease_Loan_Status, NOTEINDX, DCNUMCSH, DCNUMCHK, DCNUMCRD, ACCTAMNT, BSSI_LeaseID, NUM_PAYMENTS, BSSI_CalculatedDeferralA, REC_OFFSET_ACCT_IDX, PYMTTYPE, BSSI_cTotalChargeAmt, BSSI_EnableNegativeAmort, BSSI_AccrualsAcctIdx, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, BSSI_DeductionAcctIdx, BSSI_DefferalPrincplINDX, BSSI_DefferalChargeINDX, SLSINDX, BSSI_LeaseLoanType, CLASSID, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_dReCalculateDate, BSSI_cProRatedIntAmt, BSSI_cUnUsdPRatedIntAmt, BSSI_First_Reminder, BSSI_First_Reminder_Date, BSSI_Sec_Reminder, BSSI_Sec_Reminder_Date, BSSI_Third_Reminder, BSSI_Third_Reminder_Date, BSSI_Suspend, BSSI_EnableDisbLoan, CHANGEBY_I, CHANGEDATE_I, BSSI_PayrollComment, BSSI_EnableDeferralFunct, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableLinkToARDoc, BSSI_cProRatedXtraChgAmt, BSSI_ProratedDays, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_IntrExpAccrAcctIdx, BSSI_IntrIncAccrAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_AccrdIntrIncAcctIdx, BSSI_InterestMethod, BSSI_RecalculateInterest, BSSI_LoanDisbursementIND) VALUES ( @BSSI_Lease_Loan_Number, @BSSI_Description, @SCHEDULE_NUMBER, @ORIG_DOC_NUMBER, @CUSTNMBR, @EMPLOYID, @ADRSCODE, @SLPRSNID, @SALSTERR, @SLSAMNT, @TRDISAMT, @FRTAMNT, @MISCAMNT, @TAXAMNT, @DOCAMNT, @BACHNUMB, @DOCDATE, @PYMTRMID, @TAXSCHID, @CASHAMNT, @CHEKAMNT, @CRDTAMNT, @SCHEDULE_INT_TYPE1, @SCHEDULE_INT_RATE, @STRTDATE, @FIRST_INV_DOC_DATE, @BSSI_Rev_Source_ID, @BSSI_Recog_TemplateID, @PAYMENT_AMOUNT, @BSSI_Lease_Loan_Status, @NOTEINDX, @DCNUMCSH, @DCNUMCHK, @DCNUMCRD, @ACCTAMNT, @BSSI_LeaseID, @NUM_PAYMENTS, @BSSI_CalculatedDeferralA, @REC_OFFSET_ACCT_IDX, @PYMTTYPE, @BSSI_cTotalChargeAmt, @BSSI_EnableNegativeAmort, @BSSI_AccrualsAcctIdx, @REC_ACCT_IDX, @INT_INCOME_ACCT_IDX, @BSSI_DefferalInterestInd, @BSSI_DeductionAcctIdx, @BSSI_DefferalPrincplINDX, @BSSI_DefferalChargeINDX, @SLSINDX, @BSSI_LeaseLoanType, @CLASSID, @BSSI_EnableLoanPayrollLi, @BSSI_Facility_ID, @BSSI_dReCalculateDate, @BSSI_cProRatedIntAmt, @BSSI_cUnUsdPRatedIntAmt, @BSSI_First_Reminder, @BSSI_First_Reminder_Date, @BSSI_Sec_Reminder, @BSSI_Sec_Reminder_Date, @BSSI_Third_Reminder, @BSSI_Third_Reminder_Date, @BSSI_Suspend, @BSSI_EnableDisbLoan, @CHANGEBY_I, @CHANGEDATE_I, @BSSI_PayrollComment, @BSSI_EnableDeferralFunct, @BSSI_EnableDeferCharge, @BSSI_EnableDeferPrincipa, @BSSI_EnableDeferInterest, @BSSI_EnableLinkToARDoc, @BSSI_cProRatedXtraChgAmt, @BSSI_ProratedDays, @PAY_ACCT_IDX, @PAY_OFFSET_ACCT_IDX, @INT_EXP_ACCT_IDX, @BSSI_IntrExpAccrAcctIdx, @BSSI_IntrIncAccrAcctIdx, @BSSI_AccrdIntrExpAcctIdx, @BSSI_AccrdIntrIncAcctIdx, @BSSI_InterestMethod, @BSSI_RecalculateInterest, @BSSI_LoanDisbursementIND) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900500SI] TO [DYNGRP]
GO