SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01200F_1] (@Physical_Inventory_Index_RS int, @Physical_Inventory_Index_RE int) AS  set nocount on IF @Physical_Inventory_Index_RS IS NULL BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 ORDER BY Physical_Inventory_Index ASC END ELSE IF @Physical_Inventory_Index_RS = @Physical_Inventory_Index_RE BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Physical_Inventory_Index = @Physical_Inventory_Index_RS ORDER BY Physical_Inventory_Index ASC END ELSE BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Physical_Inventory_Index BETWEEN @Physical_Inventory_Index_RS AND @Physical_Inventory_Index_RE ORDER BY Physical_Inventory_Index ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01200F_1] TO [DYNGRP]
GO
