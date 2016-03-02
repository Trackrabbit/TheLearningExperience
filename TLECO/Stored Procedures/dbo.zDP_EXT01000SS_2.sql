SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01000SS_2] (@USERID char(15), @Extender_Type smallint, @Extender_Form_ID char(15), @UD_Field_ID char(151), @UD_Form_Field_ID_2 char(31)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Extender_Type, Extender_Form_ID, UD_Field_ID, UD_Form_Field_ID_2, Extender_Record_ID, USERID, DEX_ROW_ID FROM .EXT01000 WHERE USERID = @USERID AND Extender_Type = @Extender_Type AND Extender_Form_ID = @Extender_Form_ID AND UD_Field_ID = @UD_Field_ID AND UD_Form_Field_ID_2 = @UD_Form_Field_ID_2 ORDER BY USERID ASC, Extender_Type ASC, Extender_Form_ID ASC, UD_Field_ID ASC, UD_Form_Field_ID_2 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01000SS_2] TO [DYNGRP]
GO
