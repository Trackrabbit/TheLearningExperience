SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9300F_2] (@SmartList_Number_RS smallint, @SmartList_Name_RS char(65), @SmartList_Item_Name_RS char(65), @SmartList_Number_RE smallint, @SmartList_Name_RE char(65), @SmartList_Item_Name_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @SmartList_Number_RS IS NULL BEGIN SELECT TOP 25  MAPID, SmartList_Number, SmartList_Name, SmartList_Item_Name, URL, DEX_ROW_ID FROM .SC9300 ORDER BY SmartList_Number ASC, SmartList_Name ASC, SmartList_Item_Name ASC, DEX_ROW_ID ASC END ELSE IF @SmartList_Number_RS = @SmartList_Number_RE BEGIN SELECT TOP 25  MAPID, SmartList_Number, SmartList_Name, SmartList_Item_Name, URL, DEX_ROW_ID FROM .SC9300 WHERE SmartList_Number = @SmartList_Number_RS AND SmartList_Name BETWEEN @SmartList_Name_RS AND @SmartList_Name_RE AND SmartList_Item_Name BETWEEN @SmartList_Item_Name_RS AND @SmartList_Item_Name_RE ORDER BY SmartList_Number ASC, SmartList_Name ASC, SmartList_Item_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MAPID, SmartList_Number, SmartList_Name, SmartList_Item_Name, URL, DEX_ROW_ID FROM .SC9300 WHERE SmartList_Number BETWEEN @SmartList_Number_RS AND @SmartList_Number_RE AND SmartList_Name BETWEEN @SmartList_Name_RS AND @SmartList_Name_RE AND SmartList_Item_Name BETWEEN @SmartList_Item_Name_RS AND @SmartList_Item_Name_RE ORDER BY SmartList_Number ASC, SmartList_Name ASC, SmartList_Item_Name ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9300F_2] TO [DYNGRP]
GO
