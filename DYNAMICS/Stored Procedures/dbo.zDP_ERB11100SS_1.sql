SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11100SS_1] (@Excel_Report_ID char(15), @Table_Number smallint, @Additional_Table_Number smallint, @Field_Number smallint) AS set nocount on SELECT TOP 1  Excel_Report_ID, Table_Number, Additional_Table_Number, Field_Number, Excel_Field_Name, TBLPHYSNM, Blank_Field_CB, DEX_ROW_ID FROM .ERB11100 WHERE Excel_Report_ID = @Excel_Report_ID AND Table_Number = @Table_Number AND Additional_Table_Number = @Additional_Table_Number AND Field_Number = @Field_Number ORDER BY Excel_Report_ID ASC, Table_Number ASC, Additional_Table_Number ASC, Field_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11100SS_1] TO [DYNGRP]
GO
