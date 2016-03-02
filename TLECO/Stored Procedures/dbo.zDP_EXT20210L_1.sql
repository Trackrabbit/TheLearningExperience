SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20210L_1] (@Extender_Form_ID_RS char(15), @LNITMSEQ_RS int, @Extender_Form_ID_RE char(15), @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Form_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Form_ID, LNITMSEQ, Extender_SmartList_Num, Extender_SmartList_Name, PRODID, Series_Number, DEX_ROW_ID FROM .EXT20210 ORDER BY Extender_Form_ID DESC, LNITMSEQ DESC END ELSE IF @Extender_Form_ID_RS = @Extender_Form_ID_RE BEGIN SELECT TOP 25  Extender_Form_ID, LNITMSEQ, Extender_SmartList_Num, Extender_SmartList_Name, PRODID, Series_Number, DEX_ROW_ID FROM .EXT20210 WHERE Extender_Form_ID = @Extender_Form_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Form_ID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  Extender_Form_ID, LNITMSEQ, Extender_SmartList_Num, Extender_SmartList_Name, PRODID, Series_Number, DEX_ROW_ID FROM .EXT20210 WHERE Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Form_ID DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20210L_1] TO [DYNGRP]
GO
