SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00300SS_1] (@aaDistrQueryID int) AS  set nocount on SELECT TOP 1  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE aaDistrQueryID = @aaDistrQueryID ORDER BY aaDistrQueryID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00300SS_1] TO [DYNGRP]
GO
