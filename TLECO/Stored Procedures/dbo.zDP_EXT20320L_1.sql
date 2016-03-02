SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20320L_1] (@Extender_Template_ID_RS int, @Window_Number_RS smallint, @LNITMSEQ_RS int, @Extender_Template_ID_RE int, @Window_Number_RE smallint, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Template_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Template_ID, Window_Number, LNITMSEQ, DEX_ROW_ID FROM .EXT20320 ORDER BY Extender_Template_ID DESC, Window_Number DESC, LNITMSEQ DESC END ELSE IF @Extender_Template_ID_RS = @Extender_Template_ID_RE BEGIN SELECT TOP 25  Extender_Template_ID, Window_Number, LNITMSEQ, DEX_ROW_ID FROM .EXT20320 WHERE Extender_Template_ID = @Extender_Template_ID_RS AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Template_ID DESC, Window_Number DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  Extender_Template_ID, Window_Number, LNITMSEQ, DEX_ROW_ID FROM .EXT20320 WHERE Extender_Template_ID BETWEEN @Extender_Template_ID_RS AND @Extender_Template_ID_RE AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Template_ID DESC, Window_Number DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20320L_1] TO [DYNGRP]
GO
