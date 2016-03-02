SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42400UN_3] (@BS int, @Physical_Location_Desc char(41), @Physical_Location_Desc_RS char(41), @Physical_Location_Desc_RE char(41)) AS  set nocount on IF @Physical_Location_Desc_RS IS NULL BEGIN SELECT TOP 25  Physical_Location_Index, Physical_Location_ID, Physical_Location_Desc, LOCATNID, Last_Inventory_Date, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA42400 WHERE ( Physical_Location_Desc > @Physical_Location_Desc ) ORDER BY Physical_Location_Desc ASC, DEX_ROW_ID ASC END ELSE IF @Physical_Location_Desc_RS = @Physical_Location_Desc_RE BEGIN SELECT TOP 25  Physical_Location_Index, Physical_Location_ID, Physical_Location_Desc, LOCATNID, Last_Inventory_Date, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA42400 WHERE Physical_Location_Desc = @Physical_Location_Desc_RS AND ( Physical_Location_Desc > @Physical_Location_Desc ) ORDER BY Physical_Location_Desc ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Physical_Location_Index, Physical_Location_ID, Physical_Location_Desc, LOCATNID, Last_Inventory_Date, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA42400 WHERE Physical_Location_Desc BETWEEN @Physical_Location_Desc_RS AND @Physical_Location_Desc_RE AND ( Physical_Location_Desc > @Physical_Location_Desc ) ORDER BY Physical_Location_Desc ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42400UN_3] TO [DYNGRP]
GO
