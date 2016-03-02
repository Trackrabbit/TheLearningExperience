SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9300SI] (@MAPID char(151), @SmartList_Number smallint, @SmartList_Name char(65), @SmartList_Item_Name char(65), @URL char(255), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .SC9300 (MAPID, SmartList_Number, SmartList_Name, SmartList_Item_Name, URL) VALUES ( @MAPID, @SmartList_Number, @SmartList_Name, @SmartList_Item_Name, @URL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9300SI] TO [DYNGRP]
GO
