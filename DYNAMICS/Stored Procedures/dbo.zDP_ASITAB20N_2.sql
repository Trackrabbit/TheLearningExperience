SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASITAB20N_2] (@BS int, @ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Field_Number_Dict_ID smallint, @ASI_Field_Number smallint, @ASI_Favorite_Dict_ID_RS smallint, @ASI_Favorite_Type_RS smallint, @ASI_Field_Number_Dict_ID_RS smallint, @ASI_Field_Number_RS smallint, @ASI_Favorite_Dict_ID_RE smallint, @ASI_Favorite_Type_RE smallint, @ASI_Field_Number_Dict_ID_RE smallint, @ASI_Field_Number_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @ASI_Favorite_Dict_ID_RS IS NULL BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Field_Sequence, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Field_Name, ASI_Field_Display_Name, ASI_Field_Physical_Name, ASI_Field_Use_UsrDef_Prm, ASI_Field_DDL_Type, ASI_Field_Datatype, ASI_Field_Format_String, ASI_Field_In_Lookup_Tabl, ASI_Include_Column, ASI_Display_Column, ASI_Field_Description, ASI_Field_Custom_Query, ASI_Table_Technical_Name, DEX_ROW_ID FROM .ASITAB20 WHERE ( ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Field_Number_Dict_ID = @ASI_Field_Number_Dict_ID AND ASI_Field_Number > @ASI_Field_Number OR ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Field_Number_Dict_ID > @ASI_Field_Number_Dict_ID OR ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type > @ASI_Favorite_Type OR ASI_Favorite_Dict_ID > @ASI_Favorite_Dict_ID ) ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Field_Number_Dict_ID ASC, ASI_Field_Number ASC END ELSE IF @ASI_Favorite_Dict_ID_RS = @ASI_Favorite_Dict_ID_RE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Field_Sequence, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Field_Name, ASI_Field_Display_Name, ASI_Field_Physical_Name, ASI_Field_Use_UsrDef_Prm, ASI_Field_DDL_Type, ASI_Field_Datatype, ASI_Field_Format_String, ASI_Field_In_Lookup_Tabl, ASI_Include_Column, ASI_Display_Column, ASI_Field_Description, ASI_Field_Custom_Query, ASI_Table_Technical_Name, DEX_ROW_ID FROM .ASITAB20 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID_RS AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE AND ASI_Field_Number_Dict_ID BETWEEN @ASI_Field_Number_Dict_ID_RS AND @ASI_Field_Number_Dict_ID_RE AND ASI_Field_Number BETWEEN @ASI_Field_Number_RS AND @ASI_Field_Number_RE AND ( ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Field_Number_Dict_ID = @ASI_Field_Number_Dict_ID AND ASI_Field_Number > @ASI_Field_Number OR ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Field_Number_Dict_ID > @ASI_Field_Number_Dict_ID OR ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type > @ASI_Favorite_Type OR ASI_Favorite_Dict_ID > @ASI_Favorite_Dict_ID ) ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Field_Number_Dict_ID ASC, ASI_Field_Number ASC END ELSE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Field_Sequence, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Field_Name, ASI_Field_Display_Name, ASI_Field_Physical_Name, ASI_Field_Use_UsrDef_Prm, ASI_Field_DDL_Type, ASI_Field_Datatype, ASI_Field_Format_String, ASI_Field_In_Lookup_Tabl, ASI_Include_Column, ASI_Display_Column, ASI_Field_Description, ASI_Field_Custom_Query, ASI_Table_Technical_Name, DEX_ROW_ID FROM .ASITAB20 WHERE ASI_Favorite_Dict_ID BETWEEN @ASI_Favorite_Dict_ID_RS AND @ASI_Favorite_Dict_ID_RE AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE AND ASI_Field_Number_Dict_ID BETWEEN @ASI_Field_Number_Dict_ID_RS AND @ASI_Field_Number_Dict_ID_RE AND ASI_Field_Number BETWEEN @ASI_Field_Number_RS AND @ASI_Field_Number_RE AND ( ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Field_Number_Dict_ID = @ASI_Field_Number_Dict_ID AND ASI_Field_Number > @ASI_Field_Number OR ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Field_Number_Dict_ID > @ASI_Field_Number_Dict_ID OR ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type > @ASI_Favorite_Type OR ASI_Favorite_Dict_ID > @ASI_Favorite_Dict_ID ) ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Field_Number_Dict_ID ASC, ASI_Field_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASITAB20N_2] TO [DYNGRP]
GO
