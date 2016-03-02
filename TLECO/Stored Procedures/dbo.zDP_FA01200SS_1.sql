SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01200SS_1] (@Physical_Inventory_Index int) AS  set nocount on SELECT TOP 1  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Physical_Inventory_Index = @Physical_Inventory_Index ORDER BY Physical_Inventory_Index ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01200SS_1] TO [DYNGRP]
GO
