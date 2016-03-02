SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900SS_3] (@aaBudgetTreeDescr char(51), @aaBudgetTree char(15)) AS  set nocount on SELECT TOP 1  aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX, DEX_ROW_ID FROM .AAG00900 WHERE aaBudgetTreeDescr = @aaBudgetTreeDescr AND aaBudgetTree = @aaBudgetTree ORDER BY aaBudgetTreeDescr ASC, aaBudgetTree ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900SS_3] TO [DYNGRP]
GO
