SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20021SS_1] (@Extender_List_ID int, @Extender_List_Item_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132, DEX_ROW_ID FROM .EXT20021 WHERE Extender_List_ID = @Extender_List_ID AND Extender_List_Item_ID = @Extender_List_Item_ID ORDER BY Extender_List_ID ASC, Extender_List_Item_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20021SS_1] TO [DYNGRP]
GO
