SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20110SS_2] (@Extender_Window_ID char(15), @PRODID smallint, @TABLTECH char(79)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Window_ID, LNITMSEQ, PRODID, TABLTECH, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, DEX_ROW_ID FROM .EXT20110 WHERE Extender_Window_ID = @Extender_Window_ID AND PRODID = @PRODID AND TABLTECH = @TABLTECH ORDER BY Extender_Window_ID ASC, PRODID ASC, TABLTECH ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20110SS_2] TO [DYNGRP]
GO
