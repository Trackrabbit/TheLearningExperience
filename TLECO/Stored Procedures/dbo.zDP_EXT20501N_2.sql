SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20501N_2] (@BS int, @Extender_View_ID char(15), @Link_To_Table char(101), @LNITMSEQ int, @DEX_ROW_ID int, @Extender_View_ID_RS char(15), @Link_To_Table_RS char(101), @LNITMSEQ_RS int, @Extender_View_ID_RE char(15), @Link_To_Table_RE char(101), @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_View_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, Link_To_Product_ID, Link_To_Table, PRODID, TABLTECH, Extender_View_From_Type, Extender_View_Table_Type, Extender_From_Line, DEX_ROW_ID FROM .EXT20501 WHERE ( Extender_View_ID = @Extender_View_ID AND Link_To_Table = @Link_To_Table AND LNITMSEQ = @LNITMSEQ AND DEX_ROW_ID > @DEX_ROW_ID OR Extender_View_ID = @Extender_View_ID AND Link_To_Table = @Link_To_Table AND LNITMSEQ > @LNITMSEQ OR Extender_View_ID = @Extender_View_ID AND Link_To_Table > @Link_To_Table OR Extender_View_ID > @Extender_View_ID ) ORDER BY Extender_View_ID ASC, Link_To_Table ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE IF @Extender_View_ID_RS = @Extender_View_ID_RE BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, Link_To_Product_ID, Link_To_Table, PRODID, TABLTECH, Extender_View_From_Type, Extender_View_Table_Type, Extender_From_Line, DEX_ROW_ID FROM .EXT20501 WHERE Extender_View_ID = @Extender_View_ID_RS AND Link_To_Table BETWEEN @Link_To_Table_RS AND @Link_To_Table_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_View_ID = @Extender_View_ID AND Link_To_Table = @Link_To_Table AND LNITMSEQ = @LNITMSEQ AND DEX_ROW_ID > @DEX_ROW_ID OR Extender_View_ID = @Extender_View_ID AND Link_To_Table = @Link_To_Table AND LNITMSEQ > @LNITMSEQ OR Extender_View_ID = @Extender_View_ID AND Link_To_Table > @Link_To_Table OR Extender_View_ID > @Extender_View_ID ) ORDER BY Extender_View_ID ASC, Link_To_Table ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_View_ID, LNITMSEQ, Link_To_Product_ID, Link_To_Table, PRODID, TABLTECH, Extender_View_From_Type, Extender_View_Table_Type, Extender_From_Line, DEX_ROW_ID FROM .EXT20501 WHERE Extender_View_ID BETWEEN @Extender_View_ID_RS AND @Extender_View_ID_RE AND Link_To_Table BETWEEN @Link_To_Table_RS AND @Link_To_Table_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_View_ID = @Extender_View_ID AND Link_To_Table = @Link_To_Table AND LNITMSEQ = @LNITMSEQ AND DEX_ROW_ID > @DEX_ROW_ID OR Extender_View_ID = @Extender_View_ID AND Link_To_Table = @Link_To_Table AND LNITMSEQ > @LNITMSEQ OR Extender_View_ID = @Extender_View_ID AND Link_To_Table > @Link_To_Table OR Extender_View_ID > @Extender_View_ID ) ORDER BY Extender_View_ID ASC, Link_To_Table ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20501N_2] TO [DYNGRP]
GO
