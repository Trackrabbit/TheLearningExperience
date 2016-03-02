SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900N_2] (@BS int, @aaBudgetTree char(15), @aaBudgetTree_RS char(15), @aaBudgetTree_RE char(15)) AS  set nocount on IF @aaBudgetTree_RS IS NULL BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE ( aaBudgetTree > @aaBudgetTree ) ORDER BY aaBudgetTree ASC END ELSE IF @aaBudgetTree_RS = @aaBudgetTree_RE BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTree = @aaBudgetTree_RS AND ( aaBudgetTree > @aaBudgetTree ) ORDER BY aaBudgetTree ASC END ELSE BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTree BETWEEN @aaBudgetTree_RS AND @aaBudgetTree_RE AND ( aaBudgetTree > @aaBudgetTree ) ORDER BY aaBudgetTree ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900N_2] TO [DYNGRP]
GO
