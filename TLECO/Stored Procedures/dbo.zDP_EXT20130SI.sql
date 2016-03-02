SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20130SI] (@Extender_Window_ID char(15), @PRODID smallint, @Extender_SmartList_Num smallint, @SmartList_Prefix smallint, @Extender_SmartList_Keys_1 smallint, @Extender_SmartList_Keys_2 smallint, @Extender_SmartList_Keys_3 smallint, @Extender_SmartList_Keys_4 smallint, @Extender_SmartList_Keys_5 smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20130 (Extender_Window_ID, PRODID, Extender_SmartList_Num, SmartList_Prefix, Extender_SmartList_Keys_1, Extender_SmartList_Keys_2, Extender_SmartList_Keys_3, Extender_SmartList_Keys_4, Extender_SmartList_Keys_5) VALUES ( @Extender_Window_ID, @PRODID, @Extender_SmartList_Num, @SmartList_Prefix, @Extender_SmartList_Keys_1, @Extender_SmartList_Keys_2, @Extender_SmartList_Keys_3, @Extender_SmartList_Keys_4, @Extender_SmartList_Keys_5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20130SI] TO [DYNGRP]
GO
