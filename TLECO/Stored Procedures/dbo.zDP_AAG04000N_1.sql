SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG04000N_1] (@BS int, @aaFASetupID int, @ListID smallint, @aaFASetupID_RS int, @ListID_RS smallint, @aaFASetupID_RE int, @ListID_RE smallint) AS  set nocount on IF @aaFASetupID_RS IS NULL BEGIN SELECT TOP 25  aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID, DEX_ROW_ID FROM .AAG04000 WHERE ( aaFASetupID = @aaFASetupID AND ListID > @ListID OR aaFASetupID > @aaFASetupID ) ORDER BY aaFASetupID ASC, ListID ASC END ELSE IF @aaFASetupID_RS = @aaFASetupID_RE BEGIN SELECT TOP 25  aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID, DEX_ROW_ID FROM .AAG04000 WHERE aaFASetupID = @aaFASetupID_RS AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ( aaFASetupID = @aaFASetupID AND ListID > @ListID OR aaFASetupID > @aaFASetupID ) ORDER BY aaFASetupID ASC, ListID ASC END ELSE BEGIN SELECT TOP 25  aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID, DEX_ROW_ID FROM .AAG04000 WHERE aaFASetupID BETWEEN @aaFASetupID_RS AND @aaFASetupID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ( aaFASetupID = @aaFASetupID AND ListID > @ListID OR aaFASetupID > @aaFASetupID ) ORDER BY aaFASetupID ASC, ListID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG04000N_1] TO [DYNGRP]
GO
