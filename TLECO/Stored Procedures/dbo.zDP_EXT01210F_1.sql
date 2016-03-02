SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01210F_1] (@Extender_Record_ID_RS int, @Window_Number_RS smallint, @LNITMSEQ_RS int, @Extender_Record_ID_RE int, @Window_Number_RE smallint, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Record_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Record_ID, Window_Number, LNITMSEQ, DEX_ROW_ID FROM .EXT01210 ORDER BY Extender_Record_ID ASC, Window_Number ASC, LNITMSEQ ASC END ELSE IF @Extender_Record_ID_RS = @Extender_Record_ID_RE BEGIN SELECT TOP 25  Extender_Record_ID, Window_Number, LNITMSEQ, DEX_ROW_ID FROM .EXT01210 WHERE Extender_Record_ID = @Extender_Record_ID_RS AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Record_ID ASC, Window_Number ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Extender_Record_ID, Window_Number, LNITMSEQ, DEX_ROW_ID FROM .EXT01210 WHERE Extender_Record_ID BETWEEN @Extender_Record_ID_RS AND @Extender_Record_ID_RE AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Record_ID ASC, Window_Number ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01210F_1] TO [DYNGRP]
GO
