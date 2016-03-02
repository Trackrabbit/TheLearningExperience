SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00310N_1] (@BS int, @aaMLQueryID int, @aaMLQueryID_RS int, @aaMLQueryID_RE int) AS  set nocount on IF @aaMLQueryID_RS IS NULL BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE ( aaMLQueryID > @aaMLQueryID ) ORDER BY aaMLQueryID ASC END ELSE IF @aaMLQueryID_RS = @aaMLQueryID_RE BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQueryID = @aaMLQueryID_RS AND ( aaMLQueryID > @aaMLQueryID ) ORDER BY aaMLQueryID ASC END ELSE BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQueryID BETWEEN @aaMLQueryID_RS AND @aaMLQueryID_RE AND ( aaMLQueryID > @aaMLQueryID ) ORDER BY aaMLQueryID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00310N_1] TO [DYNGRP]
GO
