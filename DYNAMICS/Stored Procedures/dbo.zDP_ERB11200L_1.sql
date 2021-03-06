SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11200L_1] (@Excel_Report_ID_RS char(15), @LNITMSEQ_RS int, @Excel_Report_ID_RE char(15), @LNITMSEQ_RE int) AS set nocount on IF @Excel_Report_ID_RS IS NULL BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID FROM .ERB11200 ORDER BY Excel_Report_ID DESC, LNITMSEQ DESC END ELSE IF @Excel_Report_ID_RS = @Excel_Report_ID_RE BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID FROM .ERB11200 WHERE Excel_Report_ID = @Excel_Report_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Excel_Report_ID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID FROM .ERB11200 WHERE Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Excel_Report_ID DESC, LNITMSEQ DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11200L_1] TO [DYNGRP]
GO
