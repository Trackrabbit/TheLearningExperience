SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9200L_1] (@SmartList_Number_RS smallint, @SmartList_Name_RS char(65), @SmartList_Item_Name_RS char(65), @SmartList_Number_RE smallint, @SmartList_Name_RE char(65), @SmartList_Item_Name_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @SmartList_Number_RS IS NULL BEGIN SELECT TOP 25  SmartList_Number, SmartList_Name, SmartList_Item_Name, DEX_ROW_ID, TXTFIELD FROM .SC9200 ORDER BY SmartList_Number DESC, SmartList_Name DESC, SmartList_Item_Name DESC END ELSE IF @SmartList_Number_RS = @SmartList_Number_RE BEGIN SELECT TOP 25  SmartList_Number, SmartList_Name, SmartList_Item_Name, DEX_ROW_ID, TXTFIELD FROM .SC9200 WHERE SmartList_Number = @SmartList_Number_RS AND SmartList_Name BETWEEN @SmartList_Name_RS AND @SmartList_Name_RE AND SmartList_Item_Name BETWEEN @SmartList_Item_Name_RS AND @SmartList_Item_Name_RE ORDER BY SmartList_Number DESC, SmartList_Name DESC, SmartList_Item_Name DESC END ELSE BEGIN SELECT TOP 25  SmartList_Number, SmartList_Name, SmartList_Item_Name, DEX_ROW_ID, TXTFIELD FROM .SC9200 WHERE SmartList_Number BETWEEN @SmartList_Number_RS AND @SmartList_Number_RE AND SmartList_Name BETWEEN @SmartList_Name_RS AND @SmartList_Name_RE AND SmartList_Item_Name BETWEEN @SmartList_Item_Name_RS AND @SmartList_Item_Name_RE ORDER BY SmartList_Number DESC, SmartList_Name DESC, SmartList_Item_Name DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9200L_1] TO [DYNGRP]
GO
