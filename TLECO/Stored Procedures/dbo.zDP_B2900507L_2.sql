SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900507L_2] (@BSSI_LeaseID_RS char(17), @BSSI_LeaseID_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_LeaseID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 ORDER BY BSSI_LeaseID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_LeaseID_RS = @BSSI_LeaseID_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 WHERE BSSI_LeaseID = @BSSI_LeaseID_RS ORDER BY BSSI_LeaseID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 WHERE BSSI_LeaseID BETWEEN @BSSI_LeaseID_RS AND @BSSI_LeaseID_RE ORDER BY BSSI_LeaseID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900507L_2] TO [DYNGRP]
GO
