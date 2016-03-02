SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB20100SS_1] (@Excel_Report_ID char(15), @LNITMSEQ int, @Drill_Down_Parameter_Num smallint) AS set nocount on SELECT TOP 1  Excel_Report_ID, LNITMSEQ, Drill_Down_Parameter_Num, Table_Number, Field_Number, DEX_ROW_ID FROM .ERB20100 WHERE Excel_Report_ID = @Excel_Report_ID AND LNITMSEQ = @LNITMSEQ AND Drill_Down_Parameter_Num = @Drill_Down_Parameter_Num ORDER BY Excel_Report_ID ASC, LNITMSEQ ASC, Drill_Down_Parameter_Num ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB20100SS_1] TO [DYNGRP]
GO
