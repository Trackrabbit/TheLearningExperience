SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900550L_1] (@BSSI_Lease_Loan_Number_RS char(17), @Schedule_Payment_Number_RS smallint, @USERID_RS char(15), @BSSI_Lease_Loan_Number_RE char(17), @Schedule_Payment_Number_RE smallint, @USERID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Lease_Loan_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, PRINCIPAL_BALANCE, INTEREST_AMOUNT, BSSI_DaysofInterest, BSSI_Interest_Amount, BSSI_InterestAccrualAmnt, USERID, DEX_ROW_ID FROM .B2900550 ORDER BY BSSI_Lease_Loan_Number DESC, Schedule_Payment_Number DESC, USERID DESC END ELSE IF @BSSI_Lease_Loan_Number_RS = @BSSI_Lease_Loan_Number_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, PRINCIPAL_BALANCE, INTEREST_AMOUNT, BSSI_DaysofInterest, BSSI_Interest_Amount, BSSI_InterestAccrualAmnt, USERID, DEX_ROW_ID FROM .B2900550 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number_RS AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY BSSI_Lease_Loan_Number DESC, Schedule_Payment_Number DESC, USERID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, PRINCIPAL_BALANCE, INTEREST_AMOUNT, BSSI_DaysofInterest, BSSI_Interest_Amount, BSSI_InterestAccrualAmnt, USERID, DEX_ROW_ID FROM .B2900550 WHERE BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY BSSI_Lease_Loan_Number DESC, Schedule_Payment_Number DESC, USERID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900550L_1] TO [DYNGRP]
GO