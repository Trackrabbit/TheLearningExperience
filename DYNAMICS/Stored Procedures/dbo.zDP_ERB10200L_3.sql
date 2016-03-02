SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10200L_3] (@Excel_Report_ID_RS char(15), @Table_Number_RS smallint, @Excel_Display_Name_RS char(81), @Excel_Report_ID_RE char(15), @Table_Number_RE smallint, @Excel_Display_Name_RE char(81)) AS set nocount on IF @Excel_Report_ID_RS IS NULL BEGIN SELECT TOP 25  Excel_Report_ID, Table_Number, Field_Number, Excel_Field_Name, Excel_Display_Name, Display_Field, FIELDTYPE, Excel_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Display_As_Account, TBLPHYSNM, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Places_Method, Pivot_Table_Field_Pos, DEX_ROW_ID, TXTFIELD FROM .ERB10200 ORDER BY Excel_Report_ID DESC, Table_Number DESC, Excel_Display_Name DESC, DEX_ROW_ID DESC END ELSE IF @Excel_Report_ID_RS = @Excel_Report_ID_RE BEGIN SELECT TOP 25  Excel_Report_ID, Table_Number, Field_Number, Excel_Field_Name, Excel_Display_Name, Display_Field, FIELDTYPE, Excel_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Display_As_Account, TBLPHYSNM, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Places_Method, Pivot_Table_Field_Pos, DEX_ROW_ID, TXTFIELD FROM .ERB10200 WHERE Excel_Report_ID = @Excel_Report_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Excel_Display_Name BETWEEN @Excel_Display_Name_RS AND @Excel_Display_Name_RE ORDER BY Excel_Report_ID DESC, Table_Number DESC, Excel_Display_Name DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Excel_Report_ID, Table_Number, Field_Number, Excel_Field_Name, Excel_Display_Name, Display_Field, FIELDTYPE, Excel_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Display_As_Account, TBLPHYSNM, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Places_Method, Pivot_Table_Field_Pos, DEX_ROW_ID, TXTFIELD FROM .ERB10200 WHERE Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Excel_Display_Name BETWEEN @Excel_Display_Name_RS AND @Excel_Display_Name_RE ORDER BY Excel_Report_ID DESC, Table_Number DESC, Excel_Display_Name DESC, DEX_ROW_ID DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10200L_3] TO [DYNGRP]
GO