SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB12100SS_2] (@Group_Report_ID char(15), @Excel_Report_ID char(15)) AS set nocount on SELECT TOP 1  Group_Report_ID, LNITMSEQ, Excel_Report_ID, DEX_ROW_ID FROM .ERB12100 WHERE Group_Report_ID = @Group_Report_ID AND Excel_Report_ID = @Excel_Report_ID ORDER BY Group_Report_ID ASC, Excel_Report_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB12100SS_2] TO [DYNGRP]
GO
