SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9200SS_1] (@SmartList_Number smallint, @SmartList_Name char(65), @SmartList_Item_Name char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  SmartList_Number, SmartList_Name, SmartList_Item_Name, DEX_ROW_ID, TXTFIELD FROM .SC9200 WHERE SmartList_Number = @SmartList_Number AND SmartList_Name = @SmartList_Name AND SmartList_Item_Name = @SmartList_Item_Name ORDER BY SmartList_Number ASC, SmartList_Name ASC, SmartList_Item_Name ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9200SS_1] TO [DYNGRP]
GO
