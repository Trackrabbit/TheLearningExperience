SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640003SS_2] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int, @BSSI_EscalationApplyDate datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_EscalationApplyDate, BSSI_Charge_Amount, DEX_ROW_ID FROM .B4640003 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LNITMSEQ = @LNITMSEQ AND BSSI_EscalationApplyDate = @BSSI_EscalationApplyDate ORDER BY BSSI_Ground_Lease_Number ASC, LNITMSEQ ASC, BSSI_EscalationApplyDate ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640003SS_2] TO [DYNGRP]
GO
