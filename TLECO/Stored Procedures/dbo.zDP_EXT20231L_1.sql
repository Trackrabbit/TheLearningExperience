SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20231L_1] (@Extender_Navigation_List_RS int, @Navigation_Field_Type_RS smallint, @LNITMSEQ_RS int, @Extender_Navigation_List_RE int, @Navigation_Field_Type_RE smallint, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Navigation_List_RS IS NULL BEGIN SELECT TOP 25  Extender_Navigation_List, Navigation_Field_Type, LNITMSEQ, Field_ID, Search_Method, DEX_ROW_ID FROM .EXT20231 ORDER BY Extender_Navigation_List DESC, Navigation_Field_Type DESC, LNITMSEQ DESC END ELSE IF @Extender_Navigation_List_RS = @Extender_Navigation_List_RE BEGIN SELECT TOP 25  Extender_Navigation_List, Navigation_Field_Type, LNITMSEQ, Field_ID, Search_Method, DEX_ROW_ID FROM .EXT20231 WHERE Extender_Navigation_List = @Extender_Navigation_List_RS AND Navigation_Field_Type BETWEEN @Navigation_Field_Type_RS AND @Navigation_Field_Type_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Navigation_List DESC, Navigation_Field_Type DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  Extender_Navigation_List, Navigation_Field_Type, LNITMSEQ, Field_ID, Search_Method, DEX_ROW_ID FROM .EXT20231 WHERE Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE AND Navigation_Field_Type BETWEEN @Navigation_Field_Type_RS AND @Navigation_Field_Type_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Navigation_List DESC, Navigation_Field_Type DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20231L_1] TO [DYNGRP]
GO
