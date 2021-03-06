SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900202SS_1] (@USERID char(15), @BSSI_ImportID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  USERID, BSSI_ImportID, CUSTNMBR, SCHEDULE_INT_TYPE1, FIRST_INV_DUE_DATE, DOCDATE, BSSI_DownPayment, ERRDESCR, DOCNUMBR, BSSI_LeaseLoanType, SCHEDULE_NUMBER, BSSI_EnableNegativeAmort, SLSAMNT, BSSI_Lease_Loan_Number, BSSI_EnableLoanPayrollLi, BSSI_Facility_ID, BSSI_EnableDisbLoan, BSSI_InterestMethod, BSSI_RecalculateInterest, PYMTTYPE, BSSI_Rev_Source_ID, BSSI_nSuccess, DEX_ROW_ID FROM .B2900202 WHERE USERID = @USERID AND BSSI_ImportID = @BSSI_ImportID ORDER BY USERID ASC, BSSI_ImportID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900202SS_1] TO [DYNGRP]
GO
