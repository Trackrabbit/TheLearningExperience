SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10200SS_3] (@Navigation_ID char(15), @Table_Number smallint, @Navigation_Display_Name char(81)) AS set nocount on SELECT TOP 1  Navigation_ID, Table_Number, Field_Number, Navigation_Field_Name, Navigation_Display_Name, Default_Display, Display_Field, Preview_Field, FIELDTYPE, NAV_Field_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Display_As_Account, TBLPHYSNM, Display_Blank_Dates, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Table, Decimal_Field, Decimal_Places_Method, DEX_ROW_ID, TXTFIELD FROM .NLB10200 WHERE Navigation_ID = @Navigation_ID AND Table_Number = @Table_Number AND Navigation_Display_Name = @Navigation_Display_Name ORDER BY Navigation_ID ASC, Table_Number ASC, Navigation_Display_Name ASC, DEX_ROW_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10200SS_3] TO [DYNGRP]
GO
