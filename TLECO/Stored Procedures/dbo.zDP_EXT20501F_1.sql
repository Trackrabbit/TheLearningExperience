SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20501F_1] (@Extender_View_ID_RS char(15), @LNITMSEQ_RS int, @Extender_View_ID_RE char(15), @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_View_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, Link_To_Product_ID, Link_To_Table, PRODID, TABLTECH, Extender_View_From_Type, Extender_View_Table_Type, Extender_From_Line, DEX_ROW_ID FROM .EXT20501 ORDER BY Extender_View_ID ASC, LNITMSEQ ASC END ELSE IF @Extender_View_ID_RS = @Extender_View_ID_RE BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, Link_To_Product_ID, Link_To_Table, PRODID, TABLTECH, Extender_View_From_Type, Extender_View_Table_Type, Extender_From_Line, DEX_ROW_ID FROM .EXT20501 WHERE Extender_View_ID = @Extender_View_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_View_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, Link_To_Product_ID, Link_To_Table, PRODID, TABLTECH, Extender_View_From_Type, Extender_View_Table_Type, Extender_From_Line, DEX_ROW_ID FROM .EXT20501 WHERE Extender_View_ID BETWEEN @Extender_View_ID_RS AND @Extender_View_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_View_ID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20501F_1] TO [DYNGRP]
GO
