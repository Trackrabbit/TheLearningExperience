SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00300SS_2] (@aaDistrQuery char(15)) AS  set nocount on SELECT TOP 1  aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX, DEX_ROW_ID FROM .AAG00300 WHERE aaDistrQuery = @aaDistrQuery ORDER BY aaDistrQuery ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00300SS_2] TO [DYNGRP]
GO
