SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00605SS_3] (@aaLinkType smallint, @aaTree char(61)) AS  set nocount on SELECT TOP 1  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaLinkType = @aaLinkType AND aaTree = @aaTree ORDER BY aaLinkType ASC, aaTree ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00605SS_3] TO [DYNGRP]
GO
