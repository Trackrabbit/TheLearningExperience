SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00310SI] (@aaMLQueryID int, @aaMLQuery char(15), @aaMLQueryDescr char(51), @aaLevelTimeSpread smallint, @aaLevelCodeSpread smallint, @aaCodeSpreadCol smallint, @aaInclBSAccts tinyint, @aaInclPLAccts tinyint, @aaInclUnitAccts tinyint, @aaMatchType smallint, @aaCallMacro char(255), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00310 (aaMLQueryID, aaMLQuery, aaMLQueryDescr, aaLevelTimeSpread, aaLevelCodeSpread, aaCodeSpreadCol, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaMatchType, aaCallMacro, NOTEINDX) VALUES ( @aaMLQueryID, @aaMLQuery, @aaMLQueryDescr, @aaLevelTimeSpread, @aaLevelCodeSpread, @aaCodeSpreadCol, @aaInclBSAccts, @aaInclPLAccts, @aaInclUnitAccts, @aaMatchType, @aaCallMacro, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00310SI] TO [DYNGRP]
GO
