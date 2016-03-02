SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01200SI] (@Physical_Inventory_Index int, @Physical_Location_ID char(15), @Asset_Label char(19), @Verified_Date datetime, @PIN char(15), @LASTMNTDDATE datetime, @LASTMNTDTIME datetime, @LASTMNTDUSERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA01200 (Physical_Inventory_Index, Physical_Location_ID, Asset_Label, Verified_Date, PIN, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID) VALUES ( @Physical_Inventory_Index, @Physical_Location_ID, @Asset_Label, @Verified_Date, @PIN, @LASTMNTDDATE, @LASTMNTDTIME, @LASTMNTDUSERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01200SI] TO [DYNGRP]
GO
