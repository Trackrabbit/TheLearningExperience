SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100702N_1] (@BS int, @LNITMSEQ int, @LNITMSEQ_RS int, @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @LNITMSEQ_RS IS NULL BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 WHERE ( LNITMSEQ > @LNITMSEQ ) ORDER BY LNITMSEQ ASC END ELSE IF @LNITMSEQ_RS = @LNITMSEQ_RE BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 WHERE LNITMSEQ = @LNITMSEQ_RS AND ( LNITMSEQ > @LNITMSEQ ) ORDER BY LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 WHERE LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( LNITMSEQ > @LNITMSEQ ) ORDER BY LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100702N_1] TO [DYNGRP]
GO
