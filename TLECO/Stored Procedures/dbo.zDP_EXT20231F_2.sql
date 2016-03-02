SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20231F_2] (@Extender_Navigation_List_RS int, @Navigation_Field_Type_RS smallint, @Field_ID_RS int, @Extender_Navigation_List_RE int, @Navigation_Field_Type_RE smallint, @Field_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Navigation_List_RS IS NULL BEGIN SELECT TOP 25  Extender_Navigation_List, Navigation_Field_Type, LNITMSEQ, Field_ID, Search_Method, DEX_ROW_ID FROM .EXT20231 ORDER BY Extender_Navigation_List ASC, Navigation_Field_Type ASC, Field_ID ASC END ELSE IF @Extender_Navigation_List_RS = @Extender_Navigation_List_RE BEGIN SELECT TOP 25  Extender_Navigation_List, Navigation_Field_Type, LNITMSEQ, Field_ID, Search_Method, DEX_ROW_ID FROM .EXT20231 WHERE Extender_Navigation_List = @Extender_Navigation_List_RS AND Navigation_Field_Type BETWEEN @Navigation_Field_Type_RS AND @Navigation_Field_Type_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Navigation_List ASC, Navigation_Field_Type ASC, Field_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Navigation_List, Navigation_Field_Type, LNITMSEQ, Field_ID, Search_Method, DEX_ROW_ID FROM .EXT20231 WHERE Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE AND Navigation_Field_Type BETWEEN @Navigation_Field_Type_RS AND @Navigation_Field_Type_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Navigation_List ASC, Navigation_Field_Type ASC, Field_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20231F_2] TO [DYNGRP]
GO
