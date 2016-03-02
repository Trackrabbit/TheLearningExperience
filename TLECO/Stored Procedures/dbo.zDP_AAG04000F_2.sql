SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG04000F_2] (@aaAssetIndex_RS int, @aaBookIndex_RS int, @ListID_RS smallint, @aaAssetIndex_RE int, @aaBookIndex_RE int, @ListID_RE smallint) AS  set nocount on IF @aaAssetIndex_RS IS NULL BEGIN SELECT TOP 25  aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID, DEX_ROW_ID FROM .AAG04000 ORDER BY aaAssetIndex ASC, aaBookIndex ASC, ListID ASC END ELSE IF @aaAssetIndex_RS = @aaAssetIndex_RE BEGIN SELECT TOP 25  aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID, DEX_ROW_ID FROM .AAG04000 WHERE aaAssetIndex = @aaAssetIndex_RS AND aaBookIndex BETWEEN @aaBookIndex_RS AND @aaBookIndex_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE ORDER BY aaAssetIndex ASC, aaBookIndex ASC, ListID ASC END ELSE BEGIN SELECT TOP 25  aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID, DEX_ROW_ID FROM .AAG04000 WHERE aaAssetIndex BETWEEN @aaAssetIndex_RS AND @aaAssetIndex_RE AND aaBookIndex BETWEEN @aaBookIndex_RS AND @aaBookIndex_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE ORDER BY aaAssetIndex ASC, aaBookIndex ASC, ListID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG04000F_2] TO [DYNGRP]
GO
