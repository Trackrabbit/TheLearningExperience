SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01100SS_1] (@Extender_Record_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Record_ID, Extender_Window_ID, Extender_Key_Values_1, Extender_Key_Values_2, Extender_Key_Values_3, Extender_Key_Values_4, Extender_Key_Values_5, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01100 WHERE Extender_Record_ID = @Extender_Record_ID ORDER BY Extender_Record_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01100SS_1] TO [DYNGRP]
GO
