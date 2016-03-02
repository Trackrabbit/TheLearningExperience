SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10400N_1] (@BS int, @SmartList_ID char(15), @GoTo_Number smallint, @SmartList_ID_RS char(15), @GoTo_Number_RS smallint, @SmartList_ID_RE char(15), @GoTo_Number_RE smallint) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, GoTo_Description, GoTo_Type, PRODID, FORMNAME, fileName, Table_Number, Field_Number, PRCDNAME, Search_Date_Method_1, Search_Date_Method_2, Search_Date_Method_3, Search_Date_Method_4, Search_Dates_1, Search_Dates_2, Search_Dates_3, Search_Dates_4, Search_Field_Numbers_1, Search_Field_Numbers_2, Search_Field_Numbers_3, Search_Field_Numbers_4, Search_Strings_1, Search_Strings_2, Search_Strings_3, Search_Strings_4, Search_Times_1, Search_Times_2, Search_Times_3, Search_Times_4, Comparison_Types_1, Comparison_Types_2, Comparison_Types_3, Comparison_Types_4, Field_Comparison_1, Field_Comparison_2, Field_Comparison_3, Field_Comparison_4, SmartList_Field_1, SmartList_Field_2, SmartList_Field_3, SmartList_Field_4, Maximum_SmartList_Record, Search_Type, Search_Account_Indexes_1, Search_Account_Indexes_2, Search_Account_Indexes_3, Search_Account_Indexes_4, SmartList_Number, Search_Numbers_1, Search_Numbers_2, Search_Numbers_3, Search_Numbers_4, To_Search_Account_Indexe_1, To_Search_Account_Indexe_2, To_Search_Account_Indexe_3, To_Search_Account_Indexe_4, To_Search_Date_Method_1, To_Search_Date_Method_2, To_Search_Date_Method_3, To_Search_Date_Method_4, To_Search_Dates_1, To_Search_Dates_2, To_Search_Dates_3, To_Search_Dates_4, To_Search_Numbers_1, To_Search_Numbers_2, To_Search_Numbers_3, To_Search_Numbers_4, To_Search_Strings_1, To_Search_Strings_2, To_Search_Strings_3, To_Search_Strings_4, To_Search_Times_1, To_Search_Times_2, To_Search_Times_3, To_Search_Times_4, Extender_Type, Extender_ID, Drill_Down_ID, DEX_ROW_ID, TXTFIELD FROM .SLB10400 WHERE ( SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, GoTo_Description, GoTo_Type, PRODID, FORMNAME, fileName, Table_Number, Field_Number, PRCDNAME, Search_Date_Method_1, Search_Date_Method_2, Search_Date_Method_3, Search_Date_Method_4, Search_Dates_1, Search_Dates_2, Search_Dates_3, Search_Dates_4, Search_Field_Numbers_1, Search_Field_Numbers_2, Search_Field_Numbers_3, Search_Field_Numbers_4, Search_Strings_1, Search_Strings_2, Search_Strings_3, Search_Strings_4, Search_Times_1, Search_Times_2, Search_Times_3, Search_Times_4, Comparison_Types_1, Comparison_Types_2, Comparison_Types_3, Comparison_Types_4, Field_Comparison_1, Field_Comparison_2, Field_Comparison_3, Field_Comparison_4, SmartList_Field_1, SmartList_Field_2, SmartList_Field_3, SmartList_Field_4, Maximum_SmartList_Record, Search_Type, Search_Account_Indexes_1, Search_Account_Indexes_2, Search_Account_Indexes_3, Search_Account_Indexes_4, SmartList_Number, Search_Numbers_1, Search_Numbers_2, Search_Numbers_3, Search_Numbers_4, To_Search_Account_Indexe_1, To_Search_Account_Indexe_2, To_Search_Account_Indexe_3, To_Search_Account_Indexe_4, To_Search_Date_Method_1, To_Search_Date_Method_2, To_Search_Date_Method_3, To_Search_Date_Method_4, To_Search_Dates_1, To_Search_Dates_2, To_Search_Dates_3, To_Search_Dates_4, To_Search_Numbers_1, To_Search_Numbers_2, To_Search_Numbers_3, To_Search_Numbers_4, To_Search_Strings_1, To_Search_Strings_2, To_Search_Strings_3, To_Search_Strings_4, To_Search_Times_1, To_Search_Times_2, To_Search_Times_3, To_Search_Times_4, Extender_Type, Extender_ID, Drill_Down_ID, DEX_ROW_ID, TXTFIELD FROM .SLB10400 WHERE SmartList_ID = @SmartList_ID_RS AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND ( SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, GoTo_Description, GoTo_Type, PRODID, FORMNAME, fileName, Table_Number, Field_Number, PRCDNAME, Search_Date_Method_1, Search_Date_Method_2, Search_Date_Method_3, Search_Date_Method_4, Search_Dates_1, Search_Dates_2, Search_Dates_3, Search_Dates_4, Search_Field_Numbers_1, Search_Field_Numbers_2, Search_Field_Numbers_3, Search_Field_Numbers_4, Search_Strings_1, Search_Strings_2, Search_Strings_3, Search_Strings_4, Search_Times_1, Search_Times_2, Search_Times_3, Search_Times_4, Comparison_Types_1, Comparison_Types_2, Comparison_Types_3, Comparison_Types_4, Field_Comparison_1, Field_Comparison_2, Field_Comparison_3, Field_Comparison_4, SmartList_Field_1, SmartList_Field_2, SmartList_Field_3, SmartList_Field_4, Maximum_SmartList_Record, Search_Type, Search_Account_Indexes_1, Search_Account_Indexes_2, Search_Account_Indexes_3, Search_Account_Indexes_4, SmartList_Number, Search_Numbers_1, Search_Numbers_2, Search_Numbers_3, Search_Numbers_4, To_Search_Account_Indexe_1, To_Search_Account_Indexe_2, To_Search_Account_Indexe_3, To_Search_Account_Indexe_4, To_Search_Date_Method_1, To_Search_Date_Method_2, To_Search_Date_Method_3, To_Search_Date_Method_4, To_Search_Dates_1, To_Search_Dates_2, To_Search_Dates_3, To_Search_Dates_4, To_Search_Numbers_1, To_Search_Numbers_2, To_Search_Numbers_3, To_Search_Numbers_4, To_Search_Strings_1, To_Search_Strings_2, To_Search_Strings_3, To_Search_Strings_4, To_Search_Times_1, To_Search_Times_2, To_Search_Times_3, To_Search_Times_4, Extender_Type, Extender_ID, Drill_Down_ID, DEX_ROW_ID, TXTFIELD FROM .SLB10400 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND ( SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10400N_1] TO [DYNGRP]
GO
