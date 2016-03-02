SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900SS_1] (@aaBudgetTreeID int) AS  set nocount on SELECT TOP 1  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTreeID = @aaBudgetTreeID ORDER BY aaBudgetTreeID ASC set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900SS_1] TO [DYNGRP]
GO
