SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00310L_3] (@aaMLQueryDescr_RS char(51), @aaMLQueryDescr_RE char(51)) AS  set nocount on IF @aaMLQueryDescr_RS IS NULL BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 ORDER BY aaMLQueryDescr DESC, DEX_ROW_ID DESC END ELSE IF @aaMLQueryDescr_RS = @aaMLQueryDescr_RE BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQueryDescr = @aaMLQueryDescr_RS ORDER BY aaMLQueryDescr DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQueryDescr BETWEEN @aaMLQueryDescr_RS AND @aaMLQueryDescr_RE ORDER BY aaMLQueryDescr DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00310L_3] TO [DYNGRP]
GO
