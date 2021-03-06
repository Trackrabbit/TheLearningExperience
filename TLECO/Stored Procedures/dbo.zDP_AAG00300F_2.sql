SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00300F_2] (@aaDistrQuery_RS char(15), @aaDistrQuery_RE char(15)) AS  set nocount on IF @aaDistrQuery_RS IS NULL BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 ORDER BY aaDistrQuery ASC END ELSE IF @aaDistrQuery_RS = @aaDistrQuery_RE BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE aaDistrQuery = @aaDistrQuery_RS ORDER BY aaDistrQuery ASC END ELSE BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE aaDistrQuery BETWEEN @aaDistrQuery_RS AND @aaDistrQuery_RE ORDER BY aaDistrQuery ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00300F_2] TO [DYNGRP]
GO
