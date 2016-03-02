SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASITAB20SI] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Field_Sequence smallint, @ASI_Field_Number smallint, @ASI_Field_Number_Dict_ID smallint, @ASI_Field_Name char(81), @ASI_Field_Display_Name char(81), @ASI_Field_Physical_Name char(31), @ASI_Field_Use_UsrDef_Prm tinyint, @ASI_Field_DDL_Type smallint, @ASI_Field_Datatype smallint, @ASI_Field_Format_String char(51), @ASI_Field_In_Lookup_Tabl tinyint, @ASI_Include_Column tinyint, @ASI_Display_Column tinyint, @ASI_Field_Description char(255), @ASI_Field_Custom_Query char(255), @ASI_Table_Technical_Name char(81), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASITAB20 (ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Field_Sequence, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Field_Name, ASI_Field_Display_Name, ASI_Field_Physical_Name, ASI_Field_Use_UsrDef_Prm, ASI_Field_DDL_Type, ASI_Field_Datatype, ASI_Field_Format_String, ASI_Field_In_Lookup_Tabl, ASI_Include_Column, ASI_Display_Column, ASI_Field_Description, ASI_Field_Custom_Query, ASI_Table_Technical_Name) VALUES ( @ASI_Favorite_Dict_ID, @ASI_Favorite_Type, @ASI_Field_Sequence, @ASI_Field_Number, @ASI_Field_Number_Dict_ID, @ASI_Field_Name, @ASI_Field_Display_Name, @ASI_Field_Physical_Name, @ASI_Field_Use_UsrDef_Prm, @ASI_Field_DDL_Type, @ASI_Field_Datatype, @ASI_Field_Format_String, @ASI_Field_In_Lookup_Tabl, @ASI_Include_Column, @ASI_Display_Column, @ASI_Field_Description, @ASI_Field_Custom_Query, @ASI_Table_Technical_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASITAB20SI] TO [DYNGRP]
GO
