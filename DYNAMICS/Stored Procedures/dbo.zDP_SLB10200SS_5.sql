SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10200SS_5] (@SmartList_ID char(15), @Table_Number smallint, @Display_Field tinyint, @Field_Number smallint) AS /* 11.00.0323.000 */ set nocount on SELECT TOP 1  SmartList_ID, Table_Number, Field_Number, SmartList_Field_Name, SmartList_Display_Name, Default_Display, Display_Field, FIELDTYPE, SLB_Field_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Summary_Method, Display_As_Account, TBLPHYSNM, Date_Display_Option, Display_Blank_Dates, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Table, Decimal_Field, Decimal_Places_Method, Column_Order, DEX_ROW_ID, TXTFIELD FROM .SLB10200 WHERE SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND Display_Field = @Display_Field AND Field_Number = @Field_Number ORDER BY SmartList_ID ASC, Table_Number ASC, Display_Field DESC, Field_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10200SS_5] TO [DYNGRP]
GO
