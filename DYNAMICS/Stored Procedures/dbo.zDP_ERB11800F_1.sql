SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11800F_1] (@Excel_Report_ID_RS char(15), @Pivot_Table_Field_Type_RS smallint, @LNITMSEQ_RS int, @Excel_Report_ID_RE char(15), @Pivot_Table_Field_Type_RE smallint, @LNITMSEQ_RE int) AS set nocount on IF @Excel_Report_ID_RS IS NULL BEGIN SELECT TOP 25  Excel_Report_ID, Pivot_Table_Field_Type, LNITMSEQ, Table_Number, Field_Number, Pivot_Table_Summary, Pivot_Table_Field_Name, DEX_ROW_ID FROM .ERB11800 ORDER BY Excel_Report_ID ASC, Pivot_Table_Field_Type ASC, LNITMSEQ ASC END ELSE IF @Excel_Report_ID_RS = @Excel_Report_ID_RE BEGIN SELECT TOP 25  Excel_Report_ID, Pivot_Table_Field_Type, LNITMSEQ, Table_Number, Field_Number, Pivot_Table_Summary, Pivot_Table_Field_Name, DEX_ROW_ID FROM .ERB11800 WHERE Excel_Report_ID = @Excel_Report_ID_RS AND Pivot_Table_Field_Type BETWEEN @Pivot_Table_Field_Type_RS AND @Pivot_Table_Field_Type_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Excel_Report_ID ASC, Pivot_Table_Field_Type ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Excel_Report_ID, Pivot_Table_Field_Type, LNITMSEQ, Table_Number, Field_Number, Pivot_Table_Summary, Pivot_Table_Field_Name, DEX_ROW_ID FROM .ERB11800 WHERE Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND Pivot_Table_Field_Type BETWEEN @Pivot_Table_Field_Type_RS AND @Pivot_Table_Field_Type_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Excel_Report_ID ASC, Pivot_Table_Field_Type ASC, LNITMSEQ ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11800F_1] TO [DYNGRP]
GO
