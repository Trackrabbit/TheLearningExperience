SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00600SI] (@aaTreeID int, @aaTree char(61), @aaLinkType smallint, @aaDimID int, @aaTreeDescr char(51), @aaTreeMain tinyint, @aaTreeInclAllRec tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00600 (aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX) VALUES ( @aaTreeID, @aaTree, @aaLinkType, @aaDimID, @aaTreeDescr, @aaTreeMain, @aaTreeInclAllRec, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00600SI] TO [DYNGRP]
GO
