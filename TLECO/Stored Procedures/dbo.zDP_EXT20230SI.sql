SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20230SI] (@Extender_Navigation_List int, @Extender_Search_Name char(65), @Extender_Form_ID char(15), @Search_Type smallint, @Column_Sizing smallint, @Colour_Code_CB tinyint, @Colour_Code_Field_ID int, @Navigation_Default_Actio int, @Navigation_Default_Detai int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20230 (Extender_Navigation_List, Extender_Search_Name, Extender_Form_ID, Search_Type, Column_Sizing, Colour_Code_CB, Colour_Code_Field_ID, Navigation_Default_Actio, Navigation_Default_Detai) VALUES ( @Extender_Navigation_List, @Extender_Search_Name, @Extender_Form_ID, @Search_Type, @Column_Sizing, @Colour_Code_CB, @Colour_Code_Field_ID, @Navigation_Default_Actio, @Navigation_Default_Detai) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20230SI] TO [DYNGRP]
GO
