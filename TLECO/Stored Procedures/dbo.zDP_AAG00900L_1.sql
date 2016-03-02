SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900L_1] (@aaBudgetTreeID_RS int, @aaBudgetTreeID_RE int) AS  set nocount on IF @aaBudgetTreeID_RS IS NULL BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 ORDER BY aaBudgetTreeID DESC END ELSE IF @aaBudgetTreeID_RS = @aaBudgetTreeID_RE BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTreeID = @aaBudgetTreeID_RS ORDER BY aaBudgetTreeID DESC END ELSE BEGIN SELECT TOP 25  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTreeID BETWEEN @aaBudgetTreeID_RS AND @aaBudgetTreeID_RE ORDER BY aaBudgetTreeID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900L_1] TO [DYNGRP]
GO
