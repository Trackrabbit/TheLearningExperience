SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20235L_2] (@Extender_Navigation_List_RS int, @USERID_RS char(15), @Field_ID_RS int, @Extender_Navigation_List_RE int, @USERID_RE char(15), @Field_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Navigation_List_RS IS NULL BEGIN SELECT TOP 25  Extender_Navigation_List, USERID, LNITMSEQ, Field_ID, DEX_ROW_ID FROM .EXT20235 ORDER BY Extender_Navigation_List DESC, USERID DESC, Field_ID DESC END ELSE IF @Extender_Navigation_List_RS = @Extender_Navigation_List_RE BEGIN SELECT TOP 25  Extender_Navigation_List, USERID, LNITMSEQ, Field_ID, DEX_ROW_ID FROM .EXT20235 WHERE Extender_Navigation_List = @Extender_Navigation_List_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Navigation_List DESC, USERID DESC, Field_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Navigation_List, USERID, LNITMSEQ, Field_ID, DEX_ROW_ID FROM .EXT20235 WHERE Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Navigation_List DESC, USERID DESC, Field_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20235L_2] TO [DYNGRP]
GO
