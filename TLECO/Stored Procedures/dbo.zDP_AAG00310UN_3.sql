SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00310UN_3] (@BS int, @aaMLQueryDescr char(51), @aaMLQueryDescr_RS char(51), @aaMLQueryDescr_RE char(51)) AS  set nocount on IF @aaMLQueryDescr_RS IS NULL BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE ( aaMLQueryDescr > @aaMLQueryDescr ) ORDER BY aaMLQueryDescr ASC, DEX_ROW_ID ASC END ELSE IF @aaMLQueryDescr_RS = @aaMLQueryDescr_RE BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQueryDescr = @aaMLQueryDescr_RS AND ( aaMLQueryDescr > @aaMLQueryDescr ) ORDER BY aaMLQueryDescr ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQueryDescr BETWEEN @aaMLQueryDescr_RS AND @aaMLQueryDescr_RE AND ( aaMLQueryDescr > @aaMLQueryDescr ) ORDER BY aaMLQueryDescr ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00310UN_3] TO [DYNGRP]
GO
