SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01200SS_4] (@Asset_Label char(19), @Physical_Location_ID char(15)) AS  set nocount on SELECT TOP 1  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Asset_Label = @Asset_Label AND Physical_Location_ID = @Physical_Location_ID ORDER BY Asset_Label ASC, Physical_Location_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01200SS_4] TO [DYNGRP]
GO
