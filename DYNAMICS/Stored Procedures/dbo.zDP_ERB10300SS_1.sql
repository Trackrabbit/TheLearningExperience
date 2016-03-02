SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10300SS_1] (@Excel_Report_ID char(15), @Table_Number smallint, @LNITMSEQ int) AS set nocount on SELECT TOP 1  Excel_Report_ID, Table_Number, LNITMSEQ, From_Field, To_Field, DEX_ROW_ID FROM .ERB10300 WHERE Excel_Report_ID = @Excel_Report_ID AND Table_Number = @Table_Number AND LNITMSEQ = @LNITMSEQ ORDER BY Excel_Report_ID ASC, Table_Number ASC, LNITMSEQ ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10300SS_1] TO [DYNGRP]
GO
