SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11200SS_1] (@Excel_Report_ID char(15), @LNITMSEQ int) AS set nocount on SELECT TOP 1  Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID FROM .ERB11200 WHERE Excel_Report_ID = @Excel_Report_ID AND LNITMSEQ = @LNITMSEQ ORDER BY Excel_Report_ID ASC, LNITMSEQ ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11200SS_1] TO [DYNGRP]
GO
