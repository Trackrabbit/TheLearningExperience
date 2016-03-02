SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10200SS_5] (@Excel_Report_ID char(15), @Table_Number smallint, @FIELDTYPE int, @Field_Number smallint) AS set nocount on SELECT TOP 1  Excel_Report_ID, Table_Number, Field_Number, Excel_Field_Name, Excel_Display_Name, Display_Field, FIELDTYPE, Excel_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Display_As_Account, TBLPHYSNM, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Places_Method, Pivot_Table_Field_Pos, DEX_ROW_ID, TXTFIELD FROM .ERB10200 WHERE Excel_Report_ID = @Excel_Report_ID AND Table_Number = @Table_Number AND FIELDTYPE = @FIELDTYPE AND Field_Number = @Field_Number ORDER BY Excel_Report_ID ASC, Table_Number ASC, FIELDTYPE ASC, Field_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10200SS_5] TO [DYNGRP]
GO
