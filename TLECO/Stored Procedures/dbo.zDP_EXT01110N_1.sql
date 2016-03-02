SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01110N_1] (@BS int, @Extender_Record_ID int, @LNITMSEQ int, @Extender_Record_ID_RS int, @LNITMSEQ_RS int, @Extender_Record_ID_RE int, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Record_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Record_ID, LNITMSEQ, DEX_ROW_ID FROM .EXT01110 WHERE ( Extender_Record_ID = @Extender_Record_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Record_ID > @Extender_Record_ID ) ORDER BY Extender_Record_ID ASC, LNITMSEQ ASC END ELSE IF @Extender_Record_ID_RS = @Extender_Record_ID_RE BEGIN SELECT TOP 25  Extender_Record_ID, LNITMSEQ, DEX_ROW_ID FROM .EXT01110 WHERE Extender_Record_ID = @Extender_Record_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_Record_ID = @Extender_Record_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Record_ID > @Extender_Record_ID ) ORDER BY Extender_Record_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Extender_Record_ID, LNITMSEQ, DEX_ROW_ID FROM .EXT01110 WHERE Extender_Record_ID BETWEEN @Extender_Record_ID_RS AND @Extender_Record_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_Record_ID = @Extender_Record_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Record_ID > @Extender_Record_ID ) ORDER BY Extender_Record_ID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01110N_1] TO [DYNGRP]
GO
