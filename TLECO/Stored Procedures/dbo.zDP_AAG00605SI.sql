SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00605SI] (@aaTreeID int, @aaTree char(61), @aaLinkType smallint, @aaDescr char(51), @aaDimID int, @aaTrxDim char(31), @aaTreeDescr char(51), @aaTreeMain tinyint, @aaTreeInclAllRec tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00605 (aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX) VALUES ( @aaTreeID, @aaTree, @aaLinkType, @aaDescr, @aaDimID, @aaTrxDim, @aaTreeDescr, @aaTreeMain, @aaTreeInclAllRec, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00605SI] TO [DYNGRP]
GO
