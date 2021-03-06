SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40801N_1] (@BS int, @Extender_Menu_ID char(15), @LNITMSEQ int, @Extender_Menu_ID_RS char(15), @LNITMSEQ_RS int, @Extender_Menu_ID_RE char(15), @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Menu_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Menu_ID, LNITMSEQ, Menu_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME, DEX_ROW_ID FROM .EXT40801 WHERE ( Extender_Menu_ID = @Extender_Menu_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Menu_ID > @Extender_Menu_ID ) ORDER BY Extender_Menu_ID ASC, LNITMSEQ ASC END ELSE IF @Extender_Menu_ID_RS = @Extender_Menu_ID_RE BEGIN SELECT TOP 25  Extender_Menu_ID, LNITMSEQ, Menu_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME, DEX_ROW_ID FROM .EXT40801 WHERE Extender_Menu_ID = @Extender_Menu_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_Menu_ID = @Extender_Menu_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Menu_ID > @Extender_Menu_ID ) ORDER BY Extender_Menu_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Extender_Menu_ID, LNITMSEQ, Menu_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME, DEX_ROW_ID FROM .EXT40801 WHERE Extender_Menu_ID BETWEEN @Extender_Menu_ID_RS AND @Extender_Menu_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_Menu_ID = @Extender_Menu_ID AND LNITMSEQ > @LNITMSEQ OR Extender_Menu_ID > @Extender_Menu_ID ) ORDER BY Extender_Menu_ID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40801N_1] TO [DYNGRP]
GO
