SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640003F_1] (@BSSI_Ground_Lease_Number_RS char(25), @LNITMSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @BSSI_Ground_Lease_Number_RE char(25), @LNITMSEQ_RE int, @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Ground_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_EscalationApplyDate, BSSI_Charge_Amount, DEX_ROW_ID FROM .B4640003 ORDER BY BSSI_Ground_Lease_Number ASC, LNITMSEQ ASC, LNSEQNBR ASC END ELSE IF @BSSI_Ground_Lease_Number_RS = @BSSI_Ground_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_EscalationApplyDate, BSSI_Charge_Amount, DEX_ROW_ID FROM .B4640003 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Ground_Lease_Number ASC, LNITMSEQ ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_EscalationApplyDate, BSSI_Charge_Amount, DEX_ROW_ID FROM .B4640003 WHERE BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Ground_Lease_Number ASC, LNITMSEQ ASC, LNSEQNBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640003F_1] TO [DYNGRP]
GO