SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01100L_1] (@Extender_Record_ID_RS int, @Extender_Record_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Record_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Window_ID, Extender_Key_Values_1, Extender_Key_Values_2, Extender_Key_Values_3, Extender_Key_Values_4, Extender_Key_Values_5, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01100 ORDER BY Extender_Record_ID DESC END ELSE IF @Extender_Record_ID_RS = @Extender_Record_ID_RE BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Window_ID, Extender_Key_Values_1, Extender_Key_Values_2, Extender_Key_Values_3, Extender_Key_Values_4, Extender_Key_Values_5, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01100 WHERE Extender_Record_ID = @Extender_Record_ID_RS ORDER BY Extender_Record_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Window_ID, Extender_Key_Values_1, Extender_Key_Values_2, Extender_Key_Values_3, Extender_Key_Values_4, Extender_Key_Values_5, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01100 WHERE Extender_Record_ID BETWEEN @Extender_Record_ID_RS AND @Extender_Record_ID_RE ORDER BY Extender_Record_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01100L_1] TO [DYNGRP]
GO
