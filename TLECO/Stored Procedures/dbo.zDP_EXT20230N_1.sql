SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20230N_1] (@BS int, @Extender_Navigation_List int, @Extender_Navigation_List_RS int, @Extender_Navigation_List_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Navigation_List_RS IS NULL BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_Search_Name, Extender_Form_ID, Search_Type, Column_Sizing, Colour_Code_CB, Colour_Code_Field_ID, Navigation_Default_Actio, Navigation_Default_Detai, DEX_ROW_ID FROM .EXT20230 WHERE ( Extender_Navigation_List > @Extender_Navigation_List ) ORDER BY Extender_Navigation_List ASC END ELSE IF @Extender_Navigation_List_RS = @Extender_Navigation_List_RE BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_Search_Name, Extender_Form_ID, Search_Type, Column_Sizing, Colour_Code_CB, Colour_Code_Field_ID, Navigation_Default_Actio, Navigation_Default_Detai, DEX_ROW_ID FROM .EXT20230 WHERE Extender_Navigation_List = @Extender_Navigation_List_RS AND ( Extender_Navigation_List > @Extender_Navigation_List ) ORDER BY Extender_Navigation_List ASC END ELSE BEGIN SELECT TOP 25  Extender_Navigation_List, Extender_Search_Name, Extender_Form_ID, Search_Type, Column_Sizing, Colour_Code_CB, Colour_Code_Field_ID, Navigation_Default_Actio, Navigation_Default_Detai, DEX_ROW_ID FROM .EXT20230 WHERE Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE AND ( Extender_Navigation_List > @Extender_Navigation_List ) ORDER BY Extender_Navigation_List ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20230N_1] TO [DYNGRP]
GO
