SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10200F_4] (@Navigation_ID_RS char(15), @Table_Number_RS smallint, @Default_Display_RS tinyint, @Field_Number_RS smallint, @Navigation_ID_RE char(15), @Table_Number_RE smallint, @Default_Display_RE tinyint, @Field_Number_RE smallint) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Table_Number, Field_Number, Navigation_Field_Name, Navigation_Display_Name, Default_Display, Display_Field, Preview_Field, FIELDTYPE, NAV_Field_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Display_As_Account, TBLPHYSNM, Display_Blank_Dates, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Table, Decimal_Field, Decimal_Places_Method, DEX_ROW_ID, TXTFIELD FROM .NLB10200 ORDER BY Navigation_ID ASC, Table_Number ASC, Default_Display DESC, Field_Number ASC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Table_Number, Field_Number, Navigation_Field_Name, Navigation_Display_Name, Default_Display, Display_Field, Preview_Field, FIELDTYPE, NAV_Field_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Display_As_Account, TBLPHYSNM, Display_Blank_Dates, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Table, Decimal_Field, Decimal_Places_Method, DEX_ROW_ID, TXTFIELD FROM .NLB10200 WHERE Navigation_ID = @Navigation_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Default_Display BETWEEN @Default_Display_RE AND @Default_Display_RS AND Field_Number BETWEEN @Field_Number_RS AND @Field_Number_RE ORDER BY Navigation_ID ASC, Table_Number ASC, Default_Display DESC, Field_Number ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Table_Number, Field_Number, Navigation_Field_Name, Navigation_Display_Name, Default_Display, Display_Field, Preview_Field, FIELDTYPE, NAV_Field_String_Format, String_Mask, DECPLCUR, Show_Currency_Symbol, Show_Percentage_Symbol, Show_Thousands_Separator, Display_As_Account, TBLPHYSNM, Display_Blank_Dates, Display_As_Negative, Display_As_Note, Negative_Table, Negative_Field, Decimal_Table, Decimal_Field, Decimal_Places_Method, DEX_ROW_ID, TXTFIELD FROM .NLB10200 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Default_Display BETWEEN @Default_Display_RE AND @Default_Display_RS AND Field_Number BETWEEN @Field_Number_RS AND @Field_Number_RE ORDER BY Navigation_ID ASC, Table_Number ASC, Default_Display DESC, Field_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10200F_4] TO [DYNGRP]
GO
