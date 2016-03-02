SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900L_2] (@aaBudgetTree_RS char(15), @aaBudgetTree_RE char(15)) AS  set nocount on IF @aaBudgetTree_RS IS NULL BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 ORDER BY aaBudgetTree DESC END ELSE IF @aaBudgetTree_RS = @aaBudgetTree_RE BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTree = @aaBudgetTree_RS ORDER BY aaBudgetTree DESC END ELSE BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTree BETWEEN @aaBudgetTree_RS AND @aaBudgetTree_RE ORDER BY aaBudgetTree DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900L_2] TO [DYNGRP]
GO
