SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900202F_1] (@USERID_RS char(15), @BSSI_ImportID_RS char(15), @USERID_RE char(15), @BSSI_ImportID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, BSSI_ImportID, CUSTNMBR, SCHEDULE_INT_TYPE1, FIRST_INV_DUE_DATE, DOCDATE, BSSI_DownPayment, ERRDESCR, DOCNUMBR, BSSI_LeaseLoanType, SCHEDULE_NUMBER, BSSI_EnableNegativeAmort, SLSAMNT, BSSI_Lease_Loan_Number, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_EnableDisbLoan, BSSI_InterestMethod, BSSI_RecalculateInterest, PYMTTYPE, BSSI_Rev_Source_ID, BSSI_nSuccess, DEX_ROW_ID FROM .B2900202 ORDER BY USERID ASC, BSSI_ImportID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, BSSI_ImportID, CUSTNMBR, SCHEDULE_INT_TYPE1, FIRST_INV_DUE_DATE, DOCDATE, BSSI_DownPayment, ERRDESCR, DOCNUMBR, BSSI_LeaseLoanType, SCHEDULE_NUMBER, BSSI_EnableNegativeAmort, SLSAMNT, BSSI_Lease_Loan_Number, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_EnableDisbLoan, BSSI_InterestMethod, BSSI_RecalculateInterest, PYMTTYPE, BSSI_Rev_Source_ID, BSSI_nSuccess, DEX_ROW_ID FROM .B2900202 WHERE USERID = @USERID_RS AND BSSI_ImportID BETWEEN @BSSI_ImportID_RS AND @BSSI_ImportID_RE ORDER BY USERID ASC, BSSI_ImportID ASC END ELSE BEGIN SELECT TOP 25  USERID, BSSI_ImportID, CUSTNMBR, SCHEDULE_INT_TYPE1, FIRST_INV_DUE_DATE, DOCDATE, BSSI_DownPayment, ERRDESCR, DOCNUMBR, BSSI_LeaseLoanType, SCHEDULE_NUMBER, BSSI_EnableNegativeAmort, SLSAMNT, BSSI_Lease_Loan_Number, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_EnableDisbLoan, BSSI_InterestMethod, BSSI_RecalculateInterest, PYMTTYPE, BSSI_Rev_Source_ID, BSSI_nSuccess, DEX_ROW_ID FROM .B2900202 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND BSSI_ImportID BETWEEN @BSSI_ImportID_RS AND @BSSI_ImportID_RE ORDER BY USERID ASC, BSSI_ImportID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900202F_1] TO [DYNGRP]
GO
