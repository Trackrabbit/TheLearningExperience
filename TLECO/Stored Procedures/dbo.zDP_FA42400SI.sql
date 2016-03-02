SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42400SI] (@Physical_Location_Index int, @Physical_Location_ID char(15), @Physical_Location_Desc char(41), @LOCATNID char(15), @Last_Inventory_Date datetime, @LASTMNTDDATE datetime, @LASTMNTDTIME datetime, @LASTMNTDUSERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA42400 (Physical_Location_Index, Physical_Location_ID, Physical_Location_Desc, LOCATNID, Last_Inventory_Date, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID) VALUES ( @Physical_Location_Index, @Physical_Location_ID, @Physical_Location_Desc, @LOCATNID, @Last_Inventory_Date, @LASTMNTDDATE, @LASTMNTDTIME, @LASTMNTDUSERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42400SI] TO [DYNGRP]
GO
