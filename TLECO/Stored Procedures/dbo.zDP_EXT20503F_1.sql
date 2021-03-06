SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20503F_1] (@Extender_View_ID_RS char(15), @LNITMSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @Extender_View_ID_RE char(15), @LNITMSEQ_RE int, @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_View_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, LNSEQNBR, Field_ID, Field_ID_2, FIELDNAM, Field_Name_2, DEX_ROW_ID FROM .EXT20503 ORDER BY Extender_View_ID ASC, LNITMSEQ ASC, LNSEQNBR ASC END ELSE IF @Extender_View_ID_RS = @Extender_View_ID_RE BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, LNSEQNBR, Field_ID, Field_ID_2, FIELDNAM, Field_Name_2, DEX_ROW_ID FROM .EXT20503 WHERE Extender_View_ID = @Extender_View_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY Extender_View_ID ASC, LNITMSEQ ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, LNSEQNBR, Field_ID, Field_ID_2, FIELDNAM, Field_Name_2, DEX_ROW_ID FROM .EXT20503 WHERE Extender_View_ID BETWEEN @Extender_View_ID_RS AND @Extender_View_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY Extender_View_ID ASC, LNITMSEQ ASC, LNSEQNBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20503F_1] TO [DYNGRP]
GO
