SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930506UN_2] (@BS int, @BSSI_Lease_Loan_Number char(17), @BSSI_Lease_Loan_Number_RS char(17), @BSSI_Lease_Loan_Number_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Lease_Loan_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, BSSI_EnableMinTerm, LNITMSEQ, DEX_ROW_ID FROM .B2930506 WHERE ( BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Lease_Loan_Number_RS = @BSSI_Lease_Loan_Number_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, BSSI_EnableMinTerm, LNITMSEQ, DEX_ROW_ID FROM .B2930506 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number_RS AND ( BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, BSSI_EnableMinTerm, LNITMSEQ, DEX_ROW_ID FROM .B2930506 WHERE BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND ( BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930506UN_2] TO [DYNGRP]
GO
