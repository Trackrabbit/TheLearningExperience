SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11700SS_1] (@Excel_Report_ID char(15), @CMPANYID smallint) AS set nocount on SELECT TOP 1  Excel_Report_ID, CMPANYID, DEX_ROW_ID FROM .ERB11700 WHERE Excel_Report_ID = @Excel_Report_ID AND CMPANYID = @CMPANYID ORDER BY Excel_Report_ID ASC, CMPANYID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11700SS_1] TO [DYNGRP]
GO