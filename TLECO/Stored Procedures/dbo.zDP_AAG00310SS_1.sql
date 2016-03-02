SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00310SS_1] (@aaMLQueryID int) AS  set nocount on SELECT TOP 1  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQueryID = @aaMLQueryID ORDER BY aaMLQueryID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00310SS_1] TO [DYNGRP]
GO
