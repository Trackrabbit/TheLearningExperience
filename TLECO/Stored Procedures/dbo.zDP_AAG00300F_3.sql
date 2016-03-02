SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00300F_3] (@aaDistrQueryDescr_RS char(51), @aaDistrQueryDescr_RE char(51)) AS  set nocount on IF @aaDistrQueryDescr_RS IS NULL BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 ORDER BY aaDistrQueryDescr ASC, DEX_ROW_ID ASC END ELSE IF @aaDistrQueryDescr_RS = @aaDistrQueryDescr_RE BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE aaDistrQueryDescr = @aaDistrQueryDescr_RS ORDER BY aaDistrQueryDescr ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE aaDistrQueryDescr BETWEEN @aaDistrQueryDescr_RS AND @aaDistrQueryDescr_RE ORDER BY aaDistrQueryDescr ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00300F_3] TO [DYNGRP]
GO
