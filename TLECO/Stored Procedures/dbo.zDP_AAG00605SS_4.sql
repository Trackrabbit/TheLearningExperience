SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00605SS_4] (@aaTreeDescr char(51)) AS  set nocount on SELECT TOP 1  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaTreeDescr = @aaTreeDescr ORDER BY aaTreeDescr ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00605SS_4] TO [DYNGRP]
GO
