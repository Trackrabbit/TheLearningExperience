SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930512N_2] (@BS int, @BSSI_Lease_Loan_Number char(17), @DEDUCTON char(7), @DEX_ROW_ID int, @BSSI_Lease_Loan_Number_RS char(17), @DEDUCTON_RS char(7), @BSSI_Lease_Loan_Number_RE char(17), @DEDUCTON_RE char(7)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Lease_Loan_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, DEX_ROW_ID FROM .B2930512 WHERE ( BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEDUCTON = @DEDUCTON AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEDUCTON > @DEDUCTON OR BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEDUCTON ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Lease_Loan_Number_RS = @BSSI_Lease_Loan_Number_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, DEX_ROW_ID FROM .B2930512 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number_RS AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND ( BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEDUCTON = @DEDUCTON AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEDUCTON > @DEDUCTON OR BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEDUCTON ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, DEX_ROW_ID FROM .B2930512 WHERE BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND ( BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEDUCTON = @DEDUCTON AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEDUCTON > @DEDUCTON OR BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEDUCTON ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930512N_2] TO [DYNGRP]
GO
