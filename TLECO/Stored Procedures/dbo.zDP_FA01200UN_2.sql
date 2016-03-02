SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01200UN_2] (@BS int, @Physical_Location_ID char(15), @Physical_Location_ID_RS char(15), @Physical_Location_ID_RE char(15)) AS  set nocount on IF @Physical_Location_ID_RS IS NULL BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE ( Physical_Location_ID > @Physical_Location_ID ) ORDER BY Physical_Location_ID ASC, DEX_ROW_ID ASC END ELSE IF @Physical_Location_ID_RS = @Physical_Location_ID_RE BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Physical_Location_ID = @Physical_Location_ID_RS AND ( Physical_Location_ID > @Physical_Location_ID ) ORDER BY Physical_Location_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Physical_Location_ID BETWEEN @Physical_Location_ID_RS AND @Physical_Location_ID_RE AND ( Physical_Location_ID > @Physical_Location_ID ) ORDER BY Physical_Location_ID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01200UN_2] TO [DYNGRP]
GO
