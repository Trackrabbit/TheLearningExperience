SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40801SS_1] (@Extender_Menu_ID char(15), @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Menu_ID, LNITMSEQ, Menu_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME, DEX_ROW_ID FROM .EXT40801 WHERE Extender_Menu_ID = @Extender_Menu_ID AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_Menu_ID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40801SS_1] TO [DYNGRP]
GO
