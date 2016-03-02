SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00903SS_2] (@aaBudget char(15), @YEAR1 smallint) AS  set nocount on SELECT TOP 1  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE aaBudget = @aaBudget AND YEAR1 = @YEAR1 ORDER BY aaBudget ASC, YEAR1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00903SS_2] TO [DYNGRP]
GO
