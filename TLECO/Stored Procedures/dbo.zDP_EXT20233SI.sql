SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20233SI] (@Extender_Navigation_List int, @Extender_List_Item_ID int, @Colour_DDL smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20233 (Extender_Navigation_List, Extender_List_Item_ID, Colour_DDL) VALUES ( @Extender_Navigation_List, @Extender_List_Item_ID, @Colour_DDL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20233SI] TO [DYNGRP]
GO
