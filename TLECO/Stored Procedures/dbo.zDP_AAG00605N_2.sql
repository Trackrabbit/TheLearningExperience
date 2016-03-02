SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00605N_2] (@BS int, @aaTree char(61), @aaTree_RS char(61), @aaTree_RE char(61)) AS  set nocount on IF @aaTree_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE ( aaTree > @aaTree ) ORDER BY aaTree ASC END ELSE IF @aaTree_RS = @aaTree_RE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaTree = @aaTree_RS AND ( aaTree > @aaTree ) ORDER BY aaTree ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaTree BETWEEN @aaTree_RS AND @aaTree_RE AND ( aaTree > @aaTree ) ORDER BY aaTree ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00605N_2] TO [DYNGRP]
GO
