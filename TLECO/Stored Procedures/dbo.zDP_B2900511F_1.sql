SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900511F_1] (@BSSI_Lease_Loan_Number_RS char(17), @BSSI_Lease_Loan_Number_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Lease_Loan_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_DeductionFrequency, BSSI_DeductionMethod, BSSI_PayPeriodOption, BSSI_SplitBiWeekly, DEX_ROW_ID FROM .B2900511 ORDER BY BSSI_Lease_Loan_Number ASC END ELSE IF @BSSI_Lease_Loan_Number_RS = @BSSI_Lease_Loan_Number_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_DeductionFrequency, BSSI_DeductionMethod, BSSI_PayPeriodOption, BSSI_SplitBiWeekly, DEX_ROW_ID FROM .B2900511 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number_RS ORDER BY BSSI_Lease_Loan_Number ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_DeductionFrequency, BSSI_DeductionMethod, BSSI_PayPeriodOption, BSSI_SplitBiWeekly, DEX_ROW_ID FROM .B2900511 WHERE BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE ORDER BY BSSI_Lease_Loan_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900511F_1] TO [DYNGRP]
GO
