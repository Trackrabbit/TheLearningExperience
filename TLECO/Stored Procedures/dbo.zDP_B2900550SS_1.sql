SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900550SS_1] (@BSSI_Lease_Loan_Number char(17), @Schedule_Payment_Number smallint, @USERID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, PRINCIPAL_BALANCE, INTEREST_AMOUNT, BSSI_DaysofInterest, BSSI_Interest_Amount, BSSI_InterestAccrualAmnt, USERID, DEX_ROW_ID FROM .B2900550 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND Schedule_Payment_Number = @Schedule_Payment_Number AND USERID = @USERID ORDER BY BSSI_Lease_Loan_Number ASC, Schedule_Payment_Number ASC, USERID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900550SS_1] TO [DYNGRP]
GO
