SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900550SI] (@BSSI_Lease_Loan_Number char(17), @SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @BSSI_Billing_Start_Date datetime, @BSSI_Billing_End_Date datetime, @PRINCIPAL_BALANCE numeric(19,5), @INTEREST_AMOUNT numeric(19,5), @BSSI_DaysofInterest smallint, @BSSI_Interest_Amount numeric(19,5), @BSSI_InterestAccrualAmnt numeric(19,5), @USERID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900550 (BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, PRINCIPAL_BALANCE, INTEREST_AMOUNT, BSSI_DaysofInterest, BSSI_Interest_Amount, BSSI_InterestAccrualAmnt, USERID) VALUES ( @BSSI_Lease_Loan_Number, @SCHEDULE_NUMBER, @Schedule_Payment_Number, @BSSI_Billing_Start_Date, @BSSI_Billing_End_Date, @PRINCIPAL_BALANCE, @INTEREST_AMOUNT, @BSSI_DaysofInterest, @BSSI_Interest_Amount, @BSSI_InterestAccrualAmnt, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900550SI] TO [DYNGRP]
GO
