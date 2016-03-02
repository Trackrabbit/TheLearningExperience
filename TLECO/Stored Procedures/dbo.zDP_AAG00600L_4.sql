SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00600L_4] (@aaTreeDescr_RS char(51), @aaTreeDescr_RE char(51)) AS  set nocount on IF @aaTreeDescr_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 ORDER BY aaTreeDescr DESC, DEX_ROW_ID DESC END ELSE IF @aaTreeDescr_RS = @aaTreeDescr_RE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaTreeDescr = @aaTreeDescr_RS ORDER BY aaTreeDescr DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaTreeDescr BETWEEN @aaTreeDescr_RS AND @aaTreeDescr_RE ORDER BY aaTreeDescr DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00600L_4] TO [DYNGRP]
GO
