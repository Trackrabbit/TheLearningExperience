SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00903N_1] (@BS int, @aaBudgetID int, @aaBudgetID_RS int, @aaBudgetID_RE int) AS  set nocount on IF @aaBudgetID_RS IS NULL BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE ( aaBudgetID > @aaBudgetID ) ORDER BY aaBudgetID ASC END ELSE IF @aaBudgetID_RS = @aaBudgetID_RE BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE aaBudgetID = @aaBudgetID_RS AND ( aaBudgetID > @aaBudgetID ) ORDER BY aaBudgetID ASC END ELSE BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE aaBudgetID BETWEEN @aaBudgetID_RS AND @aaBudgetID_RE AND ( aaBudgetID > @aaBudgetID ) ORDER BY aaBudgetID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00903N_1] TO [DYNGRP]
GO
