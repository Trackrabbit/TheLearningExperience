SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900507F_4] (@LNITMSEQ_RS int, @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @LNITMSEQ_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 ORDER BY LNITMSEQ ASC END ELSE IF @LNITMSEQ_RS = @LNITMSEQ_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 WHERE LNITMSEQ = @LNITMSEQ_RS ORDER BY LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 WHERE LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900507F_4] TO [DYNGRP]
GO
