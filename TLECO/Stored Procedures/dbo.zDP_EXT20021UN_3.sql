SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20021UN_3] (@BS int, @Extender_List_ID int, @STRNG132 char(133), @Extender_List_ID_RS int, @STRNG132_RS char(133), @Extender_List_ID_RE int, @STRNG132_RE char(133)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_List_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132, DEX_ROW_ID FROM .EXT20021 WHERE ( Extender_List_ID = @Extender_List_ID AND STRNG132 > @STRNG132 OR Extender_List_ID > @Extender_List_ID ) ORDER BY Extender_List_ID ASC, STRNG132 ASC, DEX_ROW_ID ASC END ELSE IF @Extender_List_ID_RS = @Extender_List_ID_RE BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132, DEX_ROW_ID FROM .EXT20021 WHERE Extender_List_ID = @Extender_List_ID_RS AND STRNG132 BETWEEN @STRNG132_RS AND @STRNG132_RE AND ( Extender_List_ID = @Extender_List_ID AND STRNG132 > @STRNG132 OR Extender_List_ID > @Extender_List_ID ) ORDER BY Extender_List_ID ASC, STRNG132 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132, DEX_ROW_ID FROM .EXT20021 WHERE Extender_List_ID BETWEEN @Extender_List_ID_RS AND @Extender_List_ID_RE AND STRNG132 BETWEEN @STRNG132_RS AND @STRNG132_RE AND ( Extender_List_ID = @Extender_List_ID AND STRNG132 > @STRNG132 OR Extender_List_ID > @Extender_List_ID ) ORDER BY Extender_List_ID ASC, STRNG132 ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20021UN_3] TO [DYNGRP]
GO
