SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930512SS_2] (@BSSI_Lease_Loan_Number char(17), @DEDUCTON char(7)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, DEX_ROW_ID FROM .B2930512 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEDUCTON = @DEDUCTON ORDER BY BSSI_Lease_Loan_Number ASC, DEDUCTON ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930512SS_2] TO [DYNGRP]
GO
