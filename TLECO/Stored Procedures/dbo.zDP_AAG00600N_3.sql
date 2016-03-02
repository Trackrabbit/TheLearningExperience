SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00600N_3] (@BS int, @aaLinkType smallint, @aaTree char(61), @aaLinkType_RS smallint, @aaTree_RS char(61), @aaLinkType_RE smallint, @aaTree_RE char(61)) AS  set nocount on IF @aaLinkType_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE ( aaLinkType = @aaLinkType AND aaTree > @aaTree OR aaLinkType > @aaLinkType ) ORDER BY aaLinkType ASC, aaTree ASC END ELSE IF @aaLinkType_RS = @aaLinkType_RE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaLinkType = @aaLinkType_RS AND aaTree BETWEEN @aaTree_RS AND @aaTree_RE AND ( aaLinkType = @aaLinkType AND aaTree > @aaTree OR aaLinkType > @aaLinkType ) ORDER BY aaLinkType ASC, aaTree ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaLinkType BETWEEN @aaLinkType_RS AND @aaLinkType_RE AND aaTree BETWEEN @aaTree_RS AND @aaTree_RE AND ( aaLinkType = @aaLinkType AND aaTree > @aaTree OR aaLinkType > @aaLinkType ) ORDER BY aaLinkType ASC, aaTree ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00600N_3] TO [DYNGRP]
GO
