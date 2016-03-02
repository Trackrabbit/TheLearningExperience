SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9300F_1] (@MAPID_RS char(151), @MAPID_RE char(151)) AS /* 12.00.0311.000 */ set nocount on IF @MAPID_RS IS NULL BEGIN SELECT TOP 25  MAPID, SmartList_Number, SmartList_Name, SmartList_Item_Name, URL, DEX_ROW_ID FROM .SC9300 ORDER BY MAPID ASC END ELSE IF @MAPID_RS = @MAPID_RE BEGIN SELECT TOP 25  MAPID, SmartList_Number, SmartList_Name, SmartList_Item_Name, URL, DEX_ROW_ID FROM .SC9300 WHERE MAPID = @MAPID_RS ORDER BY MAPID ASC END ELSE BEGIN SELECT TOP 25  MAPID, SmartList_Number, SmartList_Name, SmartList_Item_Name, URL, DEX_ROW_ID FROM .SC9300 WHERE MAPID BETWEEN @MAPID_RS AND @MAPID_RE ORDER BY MAPID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9300F_1] TO [DYNGRP]
GO
