SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01200SS_3] (@Physical_Location_ID char(15), @Asset_Label char(19)) AS  set nocount on SELECT TOP 1  Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01200 WHERE Physical_Location_ID = @Physical_Location_ID AND Asset_Label = @Asset_Label ORDER BY Physical_Location_ID ASC, Asset_Label ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01200SS_3] TO [DYNGRP]
GO
