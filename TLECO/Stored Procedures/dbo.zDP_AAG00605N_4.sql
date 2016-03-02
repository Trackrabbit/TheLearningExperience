SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00605N_4] (@BS int, @aaTreeDescr char(51), @DEX_ROW_ID int, @aaTreeDescr_RS char(51), @aaTreeDescr_RE char(51)) AS  set nocount on IF @aaTreeDescr_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE ( aaTreeDescr = @aaTreeDescr AND DEX_ROW_ID > @DEX_ROW_ID OR aaTreeDescr > @aaTreeDescr ) ORDER BY aaTreeDescr ASC, DEX_ROW_ID ASC END ELSE IF @aaTreeDescr_RS = @aaTreeDescr_RE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaTreeDescr = @aaTreeDescr_RS AND ( aaTreeDescr = @aaTreeDescr AND DEX_ROW_ID > @DEX_ROW_ID OR aaTreeDescr > @aaTreeDescr ) ORDER BY aaTreeDescr ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaTree, aaLinkType, aaDescr, aaDimID, aaTrxDim, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00605 WHERE aaTreeDescr BETWEEN @aaTreeDescr_RS AND @aaTreeDescr_RE AND ( aaTreeDescr = @aaTreeDescr AND DEX_ROW_ID > @DEX_ROW_ID OR aaTreeDescr > @aaTreeDescr ) ORDER BY aaTreeDescr ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00605N_4] TO [DYNGRP]
GO
