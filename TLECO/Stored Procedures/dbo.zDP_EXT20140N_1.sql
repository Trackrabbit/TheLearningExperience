SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20140N_1] (@BS int, @Extender_Window_ID char(15), @LNITMSEQ int, @Extender_Window_ID_RS char(15), @LNITMSEQ_RS int, @Extender_Window_ID_RE char(15), @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Window_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, Extender_ID, Extender_Enquiry_ID, DEX_ROW_ID FROM .EXT20140 WHERE ( Extender_Window_ID = @Extender_Window_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC, LNITMSEQ ASC END ELSE IF @Extender_Window_ID_RS = @Extender_Window_ID_RE BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, Extender_ID, Extender_Enquiry_ID, DEX_ROW_ID FROM .EXT20140 WHERE Extender_Window_ID = @Extender_Window_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_Window_ID = @Extender_Window_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, Extender_ID, Extender_Enquiry_ID, DEX_ROW_ID FROM .EXT20140 WHERE Extender_Window_ID BETWEEN @Extender_Window_ID_RS AND @Extender_Window_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_Window_ID = @Extender_Window_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20140N_1] TO [DYNGRP]
GO
