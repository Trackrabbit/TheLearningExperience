SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20233SS_1] (@Extender_Navigation_List int, @Extender_List_Item_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Navigation_List, Extender_List_Item_ID, Colour_DDL, DEX_ROW_ID FROM .EXT20233 WHERE Extender_Navigation_List = @Extender_Navigation_List AND Extender_List_Item_ID = @Extender_List_Item_ID ORDER BY Extender_Navigation_List ASC, Extender_List_Item_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20233SS_1] TO [DYNGRP]
GO
