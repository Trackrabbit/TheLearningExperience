SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01200F_4] (@Asset_Label_RS char(19), @Physical_Location_ID_RS char(15), @Asset_Label_RE char(19), @Physical_Location_ID_RE char(15)) AS  set nocount on IF @Asset_Label_RS IS NULL BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 ORDER BY Asset_Label ASC, Physical_Location_ID ASC END ELSE IF @Asset_Label_RS = @Asset_Label_RE BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Asset_Label = @Asset_Label_RS AND Physical_Location_ID BETWEEN @Physical_Location_ID_RS AND @Physical_Location_ID_RE ORDER BY Asset_Label ASC, Physical_Location_ID ASC END ELSE BEGIN SELECT TOP 25  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Asset_Label BETWEEN @Asset_Label_RS AND @Asset_Label_RE AND Physical_Location_ID BETWEEN @Physical_Location_ID_RS AND @Physical_Location_ID_RE ORDER BY Asset_Label ASC, Physical_Location_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01200F_4] TO [DYNGRP]
GO
