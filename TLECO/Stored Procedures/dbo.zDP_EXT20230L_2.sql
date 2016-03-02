SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20230L_2] (@Extender_Form_ID_RS char(15), @Extender_Navigation_List_RS int, @Extender_Form_ID_RE char(15), @Extender_Navigation_List_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Form_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_Search_Name, Extender_Form_ID, Search_Type, Column_Sizing, Colour_Code_CB, Colour_Code_Field_ID, Navigation_Default_Actio, Navigation_Default_Detai, DEX_ROW_ID FROM .EXT20230 ORDER BY Extender_Form_ID DESC, Extender_Navigation_List DESC END ELSE IF @Extender_Form_ID_RS = @Extender_Form_ID_RE BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_Search_Name, Extender_Form_ID, Search_Type, Column_Sizing, Colour_Code_CB, Colour_Code_Field_ID, Navigation_Default_Actio, Navigation_Default_Detai, DEX_ROW_ID FROM .EXT20230 WHERE Extender_Form_ID = @Extender_Form_ID_RS AND Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE ORDER BY Extender_Form_ID DESC, Extender_Navigation_List DESC END ELSE BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_Search_Name, Extender_Form_ID, Search_Type, Column_Sizing, Colour_Code_CB, Colour_Code_Field_ID, Navigation_Default_Actio, Navigation_Default_Detai, DEX_ROW_ID FROM .EXT20230 WHERE Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE AND Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE ORDER BY Extender_Form_ID DESC, Extender_Navigation_List DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20230L_2] TO [DYNGRP]
GO
