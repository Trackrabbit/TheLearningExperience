SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930512L_2] (@BSSI_Lease_Loan_Number_RS char(17), @DEDUCTON_RS char(7), @BSSI_Lease_Loan_Number_RE char(17), @DEDUCTON_RE char(7)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Lease_Loan_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, DEX_ROW_ID FROM .B2930512 ORDER BY BSSI_Lease_Loan_Number DESC, DEDUCTON DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Lease_Loan_Number_RS = @BSSI_Lease_Loan_Number_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, DEX_ROW_ID FROM .B2930512 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number_RS AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE ORDER BY BSSI_Lease_Loan_Number DESC, DEDUCTON DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, DEX_ROW_ID FROM .B2930512 WHERE BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE ORDER BY BSSI_Lease_Loan_Number DESC, DEDUCTON DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930512L_2] TO [DYNGRP]
GO