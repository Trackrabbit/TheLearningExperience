SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900SS_2] (@aaBudgetTree char(15)) AS  set nocount on SELECT TOP 1  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTree = @aaBudgetTree ORDER BY aaBudgetTree ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900SS_2] TO [DYNGRP]
GO
