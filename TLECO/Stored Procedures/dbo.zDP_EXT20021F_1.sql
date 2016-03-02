SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20021F_1] (@Extender_List_ID_RS int, @Extender_List_Item_ID_RS int, @Extender_List_ID_RE int, @Extender_List_Item_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_List_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132, DEX_ROW_ID FROM .EXT20021 ORDER BY Extender_List_ID ASC, Extender_List_Item_ID ASC END ELSE IF @Extender_List_ID_RS = @Extender_List_ID_RE BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132, DEX_ROW_ID FROM .EXT20021 WHERE Extender_List_ID = @Extender_List_ID_RS AND Extender_List_Item_ID BETWEEN @Extender_List_Item_ID_RS AND @Extender_List_Item_ID_RE ORDER BY Extender_List_ID ASC, Extender_List_Item_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132, DEX_ROW_ID FROM .EXT20021 WHERE Extender_List_ID BETWEEN @Extender_List_ID_RS AND @Extender_List_ID_RE AND Extender_List_Item_ID BETWEEN @Extender_List_Item_ID_RS AND @Extender_List_Item_ID_RE ORDER BY Extender_List_ID ASC, Extender_List_Item_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20021F_1] TO [DYNGRP]
GO
