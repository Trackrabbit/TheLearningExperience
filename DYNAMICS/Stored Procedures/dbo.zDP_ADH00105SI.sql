SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00105SI] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Goto_Sequence smallint, @ADHGoToType smallint, @ADHGoToName char(101), @ASI_GoTo_Default tinyint, @ASI_GoTo_Value int, @DICTID smallint, @ADHSeries smallint, @ADHGoToFavoriteType smallint, @ADHGoToFavoriteName char(81), @ASI_Favorite_Save_Level smallint, @ListID smallint, @ViewID int, @Series_Name char(31), @NAME char(31), @CommandTag smallint, @ADHWebSiteAddress char(207), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ADH00105 (ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Goto_Sequence, ADHGoToType, ADHGoToName, ASI_GoTo_Default, ASI_GoTo_Value, DICTID, ADHSeries, ADHGoToFavoriteType, ADHGoToFavoriteName, ASI_Favorite_Save_Level, ListID, ViewID, Series_Name, NAME, CommandTag, ADHWebSiteAddress) VALUES ( @ASI_Favorite_Dict_ID, @ASI_Favorite_Type, @ASI_Goto_Sequence, @ADHGoToType, @ADHGoToName, @ASI_GoTo_Default, @ASI_GoTo_Value, @DICTID, @ADHSeries, @ADHGoToFavoriteType, @ADHGoToFavoriteName, @ASI_Favorite_Save_Level, @ListID, @ViewID, @Series_Name, @NAME, @CommandTag, @ADHWebSiteAddress) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00105SI] TO [DYNGRP]
GO
