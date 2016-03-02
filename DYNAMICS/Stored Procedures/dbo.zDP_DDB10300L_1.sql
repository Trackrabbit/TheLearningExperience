SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10300L_1] (@Drill_Down_ID_RS char(15), @Drill_Down_ID_RE char(15)) AS set nocount on IF @Drill_Down_ID_RS IS NULL BEGIN SELECT TOP 25  Drill_Down_ID, Search_Type, Maximum_SmartList_Record, Search_Field_Numbers_1, Search_Field_Numbers_2, Search_Field_Numbers_3, Search_Field_Numbers_4, Comparison_Types_1, Comparison_Types_2, Comparison_Types_3, Comparison_Types_4, Search_Date_Method_1, Search_Date_Method_2, Search_Date_Method_3, Search_Date_Method_4, Search_Dates_1, Search_Dates_2, Search_Dates_3, Search_Dates_4, Search_Strings_1, Search_Strings_2, Search_Strings_3, Search_Strings_4, Search_Numbers_1, Search_Numbers_2, Search_Numbers_3, Search_Numbers_4, Search_Times_1, Search_Times_2, Search_Times_3, Search_Times_4, Field_Comparison_1, Field_Comparison_2, Field_Comparison_3, Field_Comparison_4, Search_Account_Indexes_1, Search_Account_Indexes_2, Search_Account_Indexes_3, Search_Account_Indexes_4, To_Search_Account_Indexe_1, To_Search_Account_Indexe_2, To_Search_Account_Indexe_3, To_Search_Account_Indexe_4, To_Search_Date_Method_1, To_Search_Date_Method_2, To_Search_Date_Method_3, To_Search_Date_Method_4, To_Search_Dates_1, To_Search_Dates_2, To_Search_Dates_3, To_Search_Dates_4, To_Search_Numbers_1, To_Search_Numbers_2, To_Search_Numbers_3, To_Search_Numbers_4, To_Search_Strings_1, To_Search_Strings_2, To_Search_Strings_3, To_Search_Strings_4, To_Search_Times_1, To_Search_Times_2, To_Search_Times_3, To_Search_Times_4, Parameter_Field_1, Parameter_Field_2, Parameter_Field_3, Parameter_Field_4, DEX_ROW_ID FROM .DDB10300 ORDER BY Drill_Down_ID DESC END ELSE IF @Drill_Down_ID_RS = @Drill_Down_ID_RE BEGIN SELECT TOP 25  Drill_Down_ID, Search_Type, Maximum_SmartList_Record, Search_Field_Numbers_1, Search_Field_Numbers_2, Search_Field_Numbers_3, Search_Field_Numbers_4, Comparison_Types_1, Comparison_Types_2, Comparison_Types_3, Comparison_Types_4, Search_Date_Method_1, Search_Date_Method_2, Search_Date_Method_3, Search_Date_Method_4, Search_Dates_1, Search_Dates_2, Search_Dates_3, Search_Dates_4, Search_Strings_1, Search_Strings_2, Search_Strings_3, Search_Strings_4, Search_Numbers_1, Search_Numbers_2, Search_Numbers_3, Search_Numbers_4, Search_Times_1, Search_Times_2, Search_Times_3, Search_Times_4, Field_Comparison_1, Field_Comparison_2, Field_Comparison_3, Field_Comparison_4, Search_Account_Indexes_1, Search_Account_Indexes_2, Search_Account_Indexes_3, Search_Account_Indexes_4, To_Search_Account_Indexe_1, To_Search_Account_Indexe_2, To_Search_Account_Indexe_3, To_Search_Account_Indexe_4, To_Search_Date_Method_1, To_Search_Date_Method_2, To_Search_Date_Method_3, To_Search_Date_Method_4, To_Search_Dates_1, To_Search_Dates_2, To_Search_Dates_3, To_Search_Dates_4, To_Search_Numbers_1, To_Search_Numbers_2, To_Search_Numbers_3, To_Search_Numbers_4, To_Search_Strings_1, To_Search_Strings_2, To_Search_Strings_3, To_Search_Strings_4, To_Search_Times_1, To_Search_Times_2, To_Search_Times_3, To_Search_Times_4, Parameter_Field_1, Parameter_Field_2, Parameter_Field_3, Parameter_Field_4, DEX_ROW_ID FROM .DDB10300 WHERE Drill_Down_ID = @Drill_Down_ID_RS ORDER BY Drill_Down_ID DESC END ELSE BEGIN SELECT TOP 25  Drill_Down_ID, Search_Type, Maximum_SmartList_Record, Search_Field_Numbers_1, Search_Field_Numbers_2, Search_Field_Numbers_3, Search_Field_Numbers_4, Comparison_Types_1, Comparison_Types_2, Comparison_Types_3, Comparison_Types_4, Search_Date_Method_1, Search_Date_Method_2, Search_Date_Method_3, Search_Date_Method_4, Search_Dates_1, Search_Dates_2, Search_Dates_3, Search_Dates_4, Search_Strings_1, Search_Strings_2, Search_Strings_3, Search_Strings_4, Search_Numbers_1, Search_Numbers_2, Search_Numbers_3, Search_Numbers_4, Search_Times_1, Search_Times_2, Search_Times_3, Search_Times_4, Field_Comparison_1, Field_Comparison_2, Field_Comparison_3, Field_Comparison_4, Search_Account_Indexes_1, Search_Account_Indexes_2, Search_Account_Indexes_3, Search_Account_Indexes_4, To_Search_Account_Indexe_1, To_Search_Account_Indexe_2, To_Search_Account_Indexe_3, To_Search_Account_Indexe_4, To_Search_Date_Method_1, To_Search_Date_Method_2, To_Search_Date_Method_3, To_Search_Date_Method_4, To_Search_Dates_1, To_Search_Dates_2, To_Search_Dates_3, To_Search_Dates_4, To_Search_Numbers_1, To_Search_Numbers_2, To_Search_Numbers_3, To_Search_Numbers_4, To_Search_Strings_1, To_Search_Strings_2, To_Search_Strings_3, To_Search_Strings_4, To_Search_Times_1, To_Search_Times_2, To_Search_Times_3, To_Search_Times_4, Parameter_Field_1, Parameter_Field_2, Parameter_Field_3, Parameter_Field_4, DEX_ROW_ID FROM .DDB10300 WHERE Drill_Down_ID BETWEEN @Drill_Down_ID_RS AND @Drill_Down_ID_RE ORDER BY Drill_Down_ID DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10300L_1] TO [DYNGRP]
GO