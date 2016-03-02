SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01105F_1] (@CMRECNUM_RS numeric(19,5), @LNITMSEQ_RS int, @CMRECNUM_RE numeric(19,5), @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @CMRECNUM_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, LNITMSEQ, DEX_ROW_ID, TXTFIELD FROM .EXT01105 ORDER BY CMRECNUM ASC, LNITMSEQ ASC END ELSE IF @CMRECNUM_RS = @CMRECNUM_RE BEGIN SELECT TOP 25  CMRECNUM, LNITMSEQ, DEX_ROW_ID, TXTFIELD FROM .EXT01105 WHERE CMRECNUM = @CMRECNUM_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY CMRECNUM ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  CMRECNUM, LNITMSEQ, DEX_ROW_ID, TXTFIELD FROM .EXT01105 WHERE CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY CMRECNUM ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01105F_1] TO [DYNGRP]
GO
