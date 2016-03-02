SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00605SS_1] (@aaTreeID int) AS  set nocount on SELECT TOP 1  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaTreeID = @aaTreeID ORDER BY aaTreeID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00605SS_1] TO [DYNGRP]
GO
