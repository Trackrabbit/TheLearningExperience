SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG04000SI] (@aaFASetupID int, @ListID smallint, @INTERID char(5), @USERID char(15), @SERIES smallint, @ACTINDX int, @ACCTTYPE smallint, @aaBrowseType smallint, @aaAssetIndex int, @aaBookIndex int, @aaAliasID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG04000 (aaFASetupID, ListID, INTERID, USERID, SERIES, ACTINDX, ACCTTYPE, aaBrowseType, aaAssetIndex, aaBookIndex, aaAliasID) VALUES ( @aaFASetupID, @ListID, @INTERID, @USERID, @SERIES, @ACTINDX, @ACCTTYPE, @aaBrowseType, @aaAssetIndex, @aaBookIndex, @aaAliasID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG04000SI] TO [DYNGRP]
GO
