SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00605F_3] (@aaLinkType_RS smallint, @aaTree_RS char(61), @aaLinkType_RE smallint, @aaTree_RE char(61)) AS  set nocount on IF @aaLinkType_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 ORDER BY aaLinkType ASC, aaTree ASC END ELSE IF @aaLinkType_RS = @aaLinkType_RE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaLinkType = @aaLinkType_RS AND aaTree BETWEEN @aaTree_RS AND @aaTree_RE ORDER BY aaLinkType ASC, aaTree ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaLinkType BETWEEN @aaLinkType_RS AND @aaLinkType_RE AND aaTree BETWEEN @aaTree_RS AND @aaTree_RE ORDER BY aaLinkType ASC, aaTree ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00605F_3] TO [DYNGRP]
GO
