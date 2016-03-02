SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00300SI] (@aaDistrQueryID int, @aaDistrQuery char(15), @aaDistrQueryDescr char(51), @aaInclBSAccts tinyint, @aaInclPLAccts tinyint, @aaInclUnitAccts tinyint, @aaCallMacro char(255), @aaMatchType smallint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00300 (aaDistrQueryID, aaDistrQuery, aaDistrQueryDescr, aaInclBSAccts, aaInclPLAccts, aaInclUnitAccts, aaCallMacro, aaMatchType, NOTEINDX) VALUES ( @aaDistrQueryID, @aaDistrQuery, @aaDistrQueryDescr, @aaInclBSAccts, @aaInclPLAccts, @aaInclUnitAccts, @aaCallMacro, @aaMatchType, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00300SI] TO [DYNGRP]
GO
