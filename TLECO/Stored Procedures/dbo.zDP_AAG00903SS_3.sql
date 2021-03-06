SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00903SS_3] (@aaBudgetDescr char(51), @aaBudget char(15)) AS  set nocount on SELECT TOP 1  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE aaBudgetDescr = @aaBudgetDescr AND aaBudget = @aaBudget ORDER BY aaBudgetDescr ASC, aaBudget ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00903SS_3] TO [DYNGRP]
GO
