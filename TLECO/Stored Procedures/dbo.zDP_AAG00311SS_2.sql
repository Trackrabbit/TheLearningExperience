SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00311SS_2] (@aaMLQueryID int, @aaOrder int, @aaColumn smallint) AS  set nocount on SELECT TOP 1  aaMLQueryID, aaColumn, aaOrder, aaTotals, aaPageBreak, aaUDFSelect, DEX_ROW_ID FROM .AAG00311 WHERE aaMLQueryID = @aaMLQueryID AND aaOrder = @aaOrder AND aaColumn = @aaColumn ORDER BY aaMLQueryID ASC, aaOrder ASC, aaColumn ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00311SS_2] TO [DYNGRP]
GO
