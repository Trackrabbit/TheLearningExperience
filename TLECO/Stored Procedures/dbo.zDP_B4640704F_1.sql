SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640704F_1] (@LOCNCODE_RS char(11), @LNITMSEQ_RS int, @LOCNCODE_RE char(11), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_DeedRestrictionID, NOTEINDX, DEX_ROW_ID FROM .B4640704 ORDER BY LOCNCODE ASC, LNITMSEQ ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_DeedRestrictionID, NOTEINDX, DEX_ROW_ID FROM .B4640704 WHERE LOCNCODE = @LOCNCODE_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY LOCNCODE ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_DeedRestrictionID, NOTEINDX, DEX_ROW_ID FROM .B4640704 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY LOCNCODE ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640704F_1] TO [DYNGRP]
GO
