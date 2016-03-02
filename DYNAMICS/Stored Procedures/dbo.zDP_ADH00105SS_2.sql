SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00105SS_2] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ADHGoToName char(101)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Goto_Sequence, ADHGoToType, ADHGoToName, ASI_GoTo_Default, ASI_GoTo_Value, DICTID, ADHSeries, ADHGoToFavoriteType, ADHGoToFavoriteName, ASI_Favorite_Save_Level, ListID, ViewID, Series_Name, NAME, CommandTag, ADHWebSiteAddress, DEX_ROW_ID FROM .ADH00105 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ADHGoToName = @ADHGoToName ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ADHGoToName ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00105SS_2] TO [DYNGRP]
GO
