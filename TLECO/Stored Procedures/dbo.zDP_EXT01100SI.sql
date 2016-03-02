SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01100SI] (@Extender_Record_ID int, @Extender_Window_ID char(15), @Extender_Key_Values_1 char(51), @Extender_Key_Values_2 char(51), @Extender_Key_Values_3 char(51), @Extender_Key_Values_4 char(51), @Extender_Key_Values_5 char(51), @NOTEINDX numeric(19,5), @MODIFDT datetime, @MDFUSRID char(15), @CREATDDT datetime, @CRUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT01100 (Extender_Record_ID, Extender_Window_ID, Extender_Key_Values_1, Extender_Key_Values_2, Extender_Key_Values_3, Extender_Key_Values_4, Extender_Key_Values_5, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID) VALUES ( @Extender_Record_ID, @Extender_Window_ID, @Extender_Key_Values_1, @Extender_Key_Values_2, @Extender_Key_Values_3, @Extender_Key_Values_4, @Extender_Key_Values_5, @NOTEINDX, @MODIFDT, @MDFUSRID, @CREATDDT, @CRUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01100SI] TO [DYNGRP]
GO
