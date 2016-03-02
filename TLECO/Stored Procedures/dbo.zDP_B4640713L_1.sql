SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640713L_1] (@LOCNCODE_RS char(11), @LNITMSEQ_RS int, @LOCNCODE_RE char(11), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Amenity_ID, NOTEINDX, DEX_ROW_ID FROM .B4640713 ORDER BY LOCNCODE DESC, LNITMSEQ DESC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Amenity_ID, NOTEINDX, DEX_ROW_ID FROM .B4640713 WHERE LOCNCODE = @LOCNCODE_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY LOCNCODE DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Amenity_ID, NOTEINDX, DEX_ROW_ID FROM .B4640713 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY LOCNCODE DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640713L_1] TO [DYNGRP]
GO
