SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00600N_1] (@BS int, @aaTreeID int, @aaTreeID_RS int, @aaTreeID_RE int) AS  set nocount on IF @aaTreeID_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE ( aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC END ELSE IF @aaTreeID_RS = @aaTreeID_RE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaTreeID = @aaTreeID_RS AND ( aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaTreeID BETWEEN @aaTreeID_RS AND @aaTreeID_RE AND ( aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00600N_1] TO [DYNGRP]
GO
