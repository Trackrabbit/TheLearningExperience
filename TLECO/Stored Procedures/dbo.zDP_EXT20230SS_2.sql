SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20230SS_2] (@Extender_Form_ID char(15), @Extender_Navigation_List int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Navigation_List, Extender_Search_Name, Extender_Form_ID, Search_Type, Column_Sizing, Colour_Code_CB, Colour_Code_Field_ID, Navigation_Default_Actio, Navigation_Default_Detai, DEX_ROW_ID FROM .EXT20230 WHERE Extender_Form_ID = @Extender_Form_ID AND Extender_Navigation_List = @Extender_Navigation_List ORDER BY Extender_Form_ID ASC, Extender_Navigation_List ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20230SS_2] TO [DYNGRP]
GO
