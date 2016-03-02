SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20130SS_2] (@PRODID smallint, @Extender_SmartList_Num smallint, @SmartList_Prefix smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Window_ID, PRODID, Extender_SmartList_Num, SmartList_Prefix, Extender_SmartList_Keys_1, Extender_SmartList_Keys_2, Extender_SmartList_Keys_3, Extender_SmartList_Keys_4, Extender_SmartList_Keys_5, DEX_ROW_ID FROM .EXT20130 WHERE PRODID = @PRODID AND Extender_SmartList_Num = @Extender_SmartList_Num AND SmartList_Prefix = @SmartList_Prefix ORDER BY PRODID ASC, Extender_SmartList_Num ASC, SmartList_Prefix ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20130SS_2] TO [DYNGRP]
GO
