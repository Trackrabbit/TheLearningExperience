SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP81SS_2] (@ASI_Favorite_Save_Level smallint, @ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @CMPANYID smallint, @USRCLASS char(15), @USERID char(15), @ASI_Favorite_Name char(81)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Favorite_Save_Level, CMPANYID, USRCLASS, USERID, ASI_Favorite_Name, ASI_Field_Dict_ID_1, ASI_Field_Dict_ID_2, ASI_Field_Dict_ID_3, ASI_Field_Dict_ID_4, ASI_Field_List_1, ASI_Field_List_2, ASI_Field_List_3, ASI_Field_List_4, ASI_Search_Type_1, ASI_Search_Type_2, ASI_Search_Type_3, ASI_Search_Type_4, ASI_Match_Case_1, ASI_Match_Case_2, ASI_Match_Case_3, ASI_Match_Case_4, ASI_Start_Account_Number_1_1, ASI_Start_Account_Number_1_2, ASI_Start_Account_Number_1_3, ASI_Start_Account_Number_1_4, ASI_Start_Account_Number_2_1, ASI_Start_Account_Number_2_2, ASI_Start_Account_Number_2_3, ASI_Start_Account_Number_2_4, ASI_Start_Account_Number_3_1, ASI_Start_Account_Number_3_2, ASI_Start_Account_Number_3_3, ASI_Start_Account_Number_3_4, ASI_Start_Account_Number_4_1, ASI_Start_Account_Number_4_2, ASI_Start_Account_Number_4_3, ASI_Start_Account_Number_4_4, ASI_Start_Date_Token_DDL_1, ASI_Start_Date_Token_DDL_2, ASI_Start_Date_Token_DDL_3, ASI_Start_Date_Token_DDL_4, ASI_Start_Date_1, ASI_Start_Date_2, ASI_Start_Date_3, ASI_Start_Date_4, ASI_Start_DDL_1, ASI_Start_DDL_2, ASI_Start_DDL_3, ASI_Start_DDL_4, ASI_String_Start_1, ASI_String_Start_2, ASI_String_Start_3, ASI_String_Start_4, ASI_End_Account_Number_1_1, ASI_End_Account_Number_1_2, ASI_End_Account_Number_1_3, ASI_End_Account_Number_1_4, ASI_End_Account_Number_2_1, ASI_End_Account_Number_2_2, ASI_End_Account_Number_2_3, ASI_End_Account_Number_2_4, ASI_End_Account_Number_3_1, ASI_End_Account_Number_3_2, ASI_End_Account_Number_3_3, ASI_End_Account_Number_3_4, ASI_End_Account_Number_4_1, ASI_End_Account_Number_4_2, ASI_End_Account_Number_4_3, ASI_End_Account_Number_4_4, ASI_End_Date_Token_DDL_1, ASI_End_Date_Token_DDL_2, ASI_End_Date_Token_DDL_3, ASI_End_Date_Token_DDL_4, ASI_End_Date_1, ASI_End_Date_2, ASI_End_Date_3, ASI_End_Date_4, ASI_End_DDL_1, ASI_End_DDL_2, ASI_End_DDL_3, ASI_End_DDL_4, ASI_String_End_1, ASI_String_End_2, ASI_String_End_3, ASI_String_End_4, ASI_Search_From_Str_1, ASI_Search_From_Str_2, ASI_Search_From_Str_3, ASI_Search_From_Str_4, ASI_Search_To_Str_1, ASI_Search_To_Str_2, ASI_Search_To_Str_3, ASI_Search_To_Str_4, ASI_Search_Logic_Type, ASI_Max_Records, ASI_Sort_Dict_ID, ASI_Sort_Field, ASI_Sort_Type, ASI_Field_Comparison_1, ASI_Field_Comparison_2, ASI_Field_Comparison_3, ASI_Field_Comparison_4, ASI_Start_Comp_Field_ID_1, ASI_Start_Comp_Field_ID_2, ASI_Start_Comp_Field_ID_3, ASI_Start_Comp_Field_ID_4, ASI_Start_Comp_Field_Dic_1, ASI_Start_Comp_Field_Dic_2, ASI_Start_Comp_Field_Dic_3, ASI_Start_Comp_Field_Dic_4, ASI_End_Comp_Field_ID_1, ASI_End_Comp_Field_ID_2, ASI_End_Comp_Field_ID_3, ASI_End_Comp_Field_ID_4, ASI_End_Comp_Field_Dict_1, ASI_End_Comp_Field_Dict_2, ASI_End_Comp_Field_Dict_3, ASI_End_Comp_Field_Dict_4, DEX_ROW_ID FROM .ASIEXP81 WHERE ASI_Favorite_Save_Level = @ASI_Favorite_Save_Level AND ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND USERID = @USERID AND ASI_Favorite_Name = @ASI_Favorite_Name ORDER BY ASI_Favorite_Save_Level ASC, ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, CMPANYID ASC, USRCLASS ASC, USERID ASC, ASI_Favorite_Name ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP81SS_2] TO [DYNGRP]
GO
