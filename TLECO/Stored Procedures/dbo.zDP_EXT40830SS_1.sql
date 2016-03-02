SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40830SS_1] (@Extender_Page_ID char(15), @COLNUMBR smallint, @Page_Section_Number smallint, @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Page_ID, COLNUMBR, Page_Section_Number, LNITMSEQ, Page_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME, DEX_ROW_ID FROM .EXT40830 WHERE Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number = @Page_Section_Number AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_Page_ID ASC, COLNUMBR ASC, Page_Section_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40830SS_1] TO [DYNGRP]
GO
