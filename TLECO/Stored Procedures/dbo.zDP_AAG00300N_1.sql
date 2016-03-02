SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00300N_1] (@BS int, @aaDistrQueryID int, @aaDistrQueryID_RS int, @aaDistrQueryID_RE int) AS  set nocount on IF @aaDistrQueryID_RS IS NULL BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE ( aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC END ELSE IF @aaDistrQueryID_RS = @aaDistrQueryID_RE BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE aaDistrQueryID = @aaDistrQueryID_RS AND ( aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC END ELSE BEGIN SELECT TOP 25  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE aaDistrQueryID BETWEEN @aaDistrQueryID_RS AND @aaDistrQueryID_RE AND ( aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00300N_1] TO [DYNGRP]
GO
