SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42400F_1] (@Physical_Location_Index_RS int, @Physical_Location_Index_RE int) AS  set nocount on IF @Physical_Location_Index_RS IS NULL BEGIN SELECT TOP 25  Physical_Location_Index, Physical_Location_ID, Physical_Location_Desc, LOCATNID, Last_Inventory_Date, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA42400 ORDER BY Physical_Location_Index ASC END ELSE IF @Physical_Location_Index_RS = @Physical_Location_Index_RE BEGIN SELECT TOP 25  Physical_Location_Index, Physical_Location_ID, Physical_Location_Desc, LOCATNID, Last_Inventory_Date, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA42400 WHERE Physical_Location_Index = @Physical_Location_Index_RS ORDER BY Physical_Location_Index ASC END ELSE BEGIN SELECT TOP 25  Physical_Location_Index, Physical_Location_ID, Physical_Location_Desc, LOCATNID, Last_Inventory_Date, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA42400 WHERE Physical_Location_Index BETWEEN @Physical_Location_Index_RS AND @Physical_Location_Index_RE ORDER BY Physical_Location_Index ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42400F_1] TO [DYNGRP]
GO
