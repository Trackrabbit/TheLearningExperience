SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11800SS_2] (@Excel_Report_ID char(15), @Table_Number smallint, @Field_Number smallint) AS set nocount on SELECT TOP 1  Excel_Report_ID, Pivot_Table_Field_Type, LNITMSEQ, Table_Number, Field_Number, Pivot_Table_Summary, Pivot_Table_Field_Name, DEX_ROW_ID FROM .ERB11800 WHERE Excel_Report_ID = @Excel_Report_ID AND Table_Number = @Table_Number AND Field_Number = @Field_Number ORDER BY Excel_Report_ID ASC, Table_Number ASC, Field_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11800SS_2] TO [DYNGRP]
GO
