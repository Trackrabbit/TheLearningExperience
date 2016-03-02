SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900507L_1] (@BSSI_LeaseID_RS char(17), @BSSI_ChargeID_RS char(21), @LNITMSEQ_RS int, @BSSI_LeaseID_RE char(17), @BSSI_ChargeID_RE char(21), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_LeaseID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 ORDER BY BSSI_LeaseID DESC, BSSI_ChargeID DESC, LNITMSEQ DESC END ELSE IF @BSSI_LeaseID_RS = @BSSI_LeaseID_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 WHERE BSSI_LeaseID = @BSSI_LeaseID_RS AND BSSI_ChargeID BETWEEN @BSSI_ChargeID_RS AND @BSSI_ChargeID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_LeaseID DESC, BSSI_ChargeID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 WHERE BSSI_LeaseID BETWEEN @BSSI_LeaseID_RS AND @BSSI_LeaseID_RE AND BSSI_ChargeID BETWEEN @BSSI_ChargeID_RS AND @BSSI_ChargeID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_LeaseID DESC, BSSI_ChargeID DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900507L_1] TO [DYNGRP]
GO