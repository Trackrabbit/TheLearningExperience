SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900L_3] (@aaBudgetTreeDescr_RS char(51), @aaBudgetTree_RS char(15), @aaBudgetTreeDescr_RE char(51), @aaBudgetTree_RE char(15)) AS  set nocount on IF @aaBudgetTreeDescr_RS IS NULL BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 ORDER BY aaBudgetTreeDescr DESC, aaBudgetTree DESC, DEX_ROW_ID DESC END ELSE IF @aaBudgetTreeDescr_RS = @aaBudgetTreeDescr_RE BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTreeDescr = @aaBudgetTreeDescr_RS AND aaBudgetTree BETWEEN @aaBudgetTree_RS AND @aaBudgetTree_RE ORDER BY aaBudgetTreeDescr DESC, aaBudgetTree DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTreeDescr BETWEEN @aaBudgetTreeDescr_RS AND @aaBudgetTreeDescr_RE AND aaBudgetTree BETWEEN @aaBudgetTree_RS AND @aaBudgetTree_RE ORDER BY aaBudgetTreeDescr DESC, aaBudgetTree DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900L_3] TO [DYNGRP]
GO
