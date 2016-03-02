SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG04000SS_1] (@aaFASetupID int, @ListID smallint) AS  set nocount on SELECT TOP 1  aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID, DEX_ROW_ID FROM .AAG04000 WHERE aaFASetupID = @aaFASetupID AND ListID = @ListID ORDER BY aaFASetupID ASC, ListID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG04000SS_1] TO [DYNGRP]
GO
