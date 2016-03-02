SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20233F_1] (@Extender_Navigation_List_RS int, @Extender_List_Item_ID_RS int, @Extender_Navigation_List_RE int, @Extender_List_Item_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Navigation_List_RS IS NULL BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_List_Item_ID, Colour_DDL, DEX_ROW_ID FROM .EXT20233 ORDER BY Extender_Navigation_List ASC, Extender_List_Item_ID ASC END ELSE IF @Extender_Navigation_List_RS = @Extender_Navigation_List_RE BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_List_Item_ID, Colour_DDL, DEX_ROW_ID FROM .EXT20233 WHERE Extender_Navigation_List = @Extender_Navigation_List_RS AND Extender_List_Item_ID BETWEEN @Extender_List_Item_ID_RS AND @Extender_List_Item_ID_RE ORDER BY Extender_Navigation_List ASC, Extender_List_Item_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_List_Item_ID, Colour_DDL, DEX_ROW_ID FROM .EXT20233 WHERE Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE AND Extender_List_Item_ID BETWEEN @Extender_List_Item_ID_RS AND @Extender_List_Item_ID_RE ORDER BY Extender_Navigation_List ASC, Extender_List_Item_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20233F_1] TO [DYNGRP]
GO
