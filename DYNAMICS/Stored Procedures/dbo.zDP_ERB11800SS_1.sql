SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11800SS_1] (@Excel_Report_ID char(15), @Pivot_Table_Field_Type smallint, @LNITMSEQ int) AS set nocount on SELECT TOP 1  Excel_Report_ID, Pivot_Table_Field_Type, LNITMSEQ, Table_Number, Field_Number, Pivot_Table_Summary, Pivot_Table_Field_Name, DEX_ROW_ID FROM .ERB11800 WHERE Excel_Report_ID = @Excel_Report_ID AND Pivot_Table_Field_Type = @Pivot_Table_Field_Type AND LNITMSEQ = @LNITMSEQ ORDER BY Excel_Report_ID ASC, Pivot_Table_Field_Type ASC, LNITMSEQ ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11800SS_1] TO [DYNGRP]
GO
