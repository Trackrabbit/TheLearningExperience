SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20021SS_3] (@Extender_List_ID int, @STRNG132 char(133)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132, DEX_ROW_ID FROM .EXT20021 WHERE Extender_List_ID = @Extender_List_ID AND STRNG132 = @STRNG132 ORDER BY Extender_List_ID ASC, STRNG132 ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20021SS_3] TO [DYNGRP]
GO
