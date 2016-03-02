SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00600L_2] (@aaTree_RS char(61), @aaTree_RE char(61)) AS  set nocount on IF @aaTree_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 ORDER BY aaTree DESC END ELSE IF @aaTree_RS = @aaTree_RE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaTree = @aaTree_RS ORDER BY aaTree DESC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaTree BETWEEN @aaTree_RS AND @aaTree_RE ORDER BY aaTree DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00600L_2] TO [DYNGRP]
GO
