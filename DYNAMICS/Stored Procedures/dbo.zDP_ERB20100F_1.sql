SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB20100F_1] (@Excel_Report_ID_RS char(15), @LNITMSEQ_RS int, @Drill_Down_Parameter_Num_RS smallint, @Excel_Report_ID_RE char(15), @LNITMSEQ_RE int, @Drill_Down_Parameter_Num_RE smallint) AS set nocount on IF @Excel_Report_ID_RS IS NULL BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Drill_Down_Parameter_Num, Table_Number, Field_Number, DEX_ROW_ID FROM .ERB20100 ORDER BY Excel_Report_ID ASC, LNITMSEQ ASC, Drill_Down_Parameter_Num ASC END ELSE IF @Excel_Report_ID_RS = @Excel_Report_ID_RE BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Drill_Down_Parameter_Num, Table_Number, Field_Number, DEX_ROW_ID FROM .ERB20100 WHERE Excel_Report_ID = @Excel_Report_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND Drill_Down_Parameter_Num BETWEEN @Drill_Down_Parameter_Num_RS AND @Drill_Down_Parameter_Num_RE ORDER BY Excel_Report_ID ASC, LNITMSEQ ASC, Drill_Down_Parameter_Num ASC END ELSE BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Drill_Down_Parameter_Num, Table_Number, Field_Number, DEX_ROW_ID FROM .ERB20100 WHERE Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND Drill_Down_Parameter_Num BETWEEN @Drill_Down_Parameter_Num_RS AND @Drill_Down_Parameter_Num_RE ORDER BY Excel_Report_ID ASC, LNITMSEQ ASC, Drill_Down_Parameter_Num ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB20100F_1] TO [DYNGRP]
GO
