SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9300SS_2] (@SmartList_Number smallint, @SmartList_Name char(65), @SmartList_Item_Name char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MAPID, SmartList_Number, SmartList_Name, SmartList_Item_Name, URL, DEX_ROW_ID FROM .SC9300 WHERE SmartList_Number = @SmartList_Number AND SmartList_Name = @SmartList_Name AND SmartList_Item_Name = @SmartList_Item_Name ORDER BY SmartList_Number ASC, SmartList_Name ASC, SmartList_Item_Name ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9300SS_2] TO [DYNGRP]
GO
