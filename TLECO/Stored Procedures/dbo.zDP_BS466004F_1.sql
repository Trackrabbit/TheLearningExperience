SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466004F_1] (@VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @LNITMSEQ_RS int, @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint, @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, LNITMSEQ, BSSI_Template_ID, BSSI_Description, BSSI_Charge_ID, NOTEINDX, BSSI_AllocatedAmt, BSSI_Allocation_Percent, DEX_ROW_ID FROM .BS466004 ORDER BY VCHRNMBR ASC, DOCTYPE ASC, LNITMSEQ ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, LNITMSEQ, BSSI_Template_ID, BSSI_Description, BSSI_Charge_ID, NOTEINDX, BSSI_AllocatedAmt, BSSI_Allocation_Percent, DEX_ROW_ID FROM .BS466004 WHERE VCHRNMBR = @VCHRNMBR_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY VCHRNMBR ASC, DOCTYPE ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, LNITMSEQ, BSSI_Template_ID, BSSI_Description, BSSI_Charge_ID, NOTEINDX, BSSI_AllocatedAmt, BSSI_Allocation_Percent, DEX_ROW_ID FROM .BS466004 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY VCHRNMBR ASC, DOCTYPE ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466004F_1] TO [DYNGRP]
GO
