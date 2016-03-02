SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00310F_2] (@aaMLQuery_RS char(15), @aaMLQuery_RE char(15)) AS  set nocount on IF @aaMLQuery_RS IS NULL BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 ORDER BY aaMLQuery ASC END ELSE IF @aaMLQuery_RS = @aaMLQuery_RE BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQuery = @aaMLQuery_RS ORDER BY aaMLQuery ASC END ELSE BEGIN SELECT TOP 25  aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX, DEX_ROW_ID FROM .AAG00310 WHERE aaMLQuery BETWEEN @aaMLQuery_RS AND @aaMLQuery_RE ORDER BY aaMLQuery ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00310F_2] TO [DYNGRP]
GO
