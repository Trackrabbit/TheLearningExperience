SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900511SS_1] (@BSSI_Lease_Loan_Number char(17)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, BSSI_DeductionFrequency, BSSI_DeductionMethod, BSSI_PayPeriodOption, BSSI_SplitBiWeekly, DEX_ROW_ID FROM .B2900511 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number ORDER BY BSSI_Lease_Loan_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900511SS_1] TO [DYNGRP]
GO
