SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40830N_1] (@BS int, @Extender_Page_ID char(15), @COLNUMBR smallint, @Page_Section_Number smallint, @LNITMSEQ int, @Extender_Page_ID_RS char(15), @COLNUMBR_RS smallint, @Page_Section_Number_RS smallint, @LNITMSEQ_RS int, @Extender_Page_ID_RE char(15), @COLNUMBR_RE smallint, @Page_Section_Number_RE smallint, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Page_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Page_ID, COLNUMBR, Page_Section_Number, LNITMSEQ, Page_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME, DEX_ROW_ID FROM .EXT40830 WHERE ( Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number = @Page_Section_Number AND LNITMSEQ > @LNITMSEQ OR Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number > @Page_Section_Number OR Extender_Page_ID = @Extender_Page_ID AND COLNUMBR > @COLNUMBR OR Extender_Page_ID > @Extender_Page_ID ) ORDER BY Extender_Page_ID ASC, COLNUMBR ASC, Page_Section_Number ASC, LNITMSEQ ASC END ELSE IF @Extender_Page_ID_RS = @Extender_Page_ID_RE BEGIN SELECT TOP 25  Extender_Page_ID, COLNUMBR, Page_Section_Number, LNITMSEQ, Page_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME, DEX_ROW_ID FROM .EXT40830 WHERE Extender_Page_ID = @Extender_Page_ID_RS AND COLNUMBR BETWEEN @COLNUMBR_RS AND @COLNUMBR_RE AND Page_Section_Number BETWEEN @Page_Section_Number_RS AND @Page_Section_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number = @Page_Section_Number AND LNITMSEQ > @LNITMSEQ OR Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number > @Page_Section_Number OR Extender_Page_ID = @Extender_Page_ID AND COLNUMBR > @COLNUMBR OR Extender_Page_ID > @Extender_Page_ID ) ORDER BY Extender_Page_ID ASC, COLNUMBR ASC, Page_Section_Number ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Extender_Page_ID, COLNUMBR, Page_Section_Number, LNITMSEQ, Page_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME, DEX_ROW_ID FROM .EXT40830 WHERE Extender_Page_ID BETWEEN @Extender_Page_ID_RS AND @Extender_Page_ID_RE AND COLNUMBR BETWEEN @COLNUMBR_RS AND @COLNUMBR_RE AND Page_Section_Number BETWEEN @Page_Section_Number_RS AND @Page_Section_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number = @Page_Section_Number AND LNITMSEQ > @LNITMSEQ OR Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number > @Page_Section_Number OR Extender_Page_ID = @Extender_Page_ID AND COLNUMBR > @COLNUMBR OR Extender_Page_ID > @Extender_Page_ID ) ORDER BY Extender_Page_ID ASC, COLNUMBR ASC, Page_Section_Number ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40830N_1] TO [DYNGRP]
GO