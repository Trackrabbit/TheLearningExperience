SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG04000SS_2] (@aaAssetIndex int, @aaBookIndex int, @ListID smallint) AS  set nocount on SELECT TOP 1  aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID, DEX_ROW_ID FROM .AAG04000 WHERE aaAssetIndex = @aaAssetIndex AND aaBookIndex = @aaBookIndex AND ListID = @ListID ORDER BY aaAssetIndex ASC, aaBookIndex ASC, ListID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG04000SS_2] TO [DYNGRP]
GO
