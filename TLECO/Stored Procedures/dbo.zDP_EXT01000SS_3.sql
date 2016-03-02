SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01000SS_3] (@Extender_Type smallint, @Extender_Record_ID int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Extender_Type, Extender_Form_ID, UD_Field_ID, UD_Form_Field_ID_2, Extender_Record_ID, USERID, DEX_ROW_ID FROM .EXT01000 WHERE Extender_Type = @Extender_Type AND Extender_Record_ID = @Extender_Record_ID ORDER BY Extender_Type ASC, Extender_Record_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01000SS_3] TO [DYNGRP]
GO
