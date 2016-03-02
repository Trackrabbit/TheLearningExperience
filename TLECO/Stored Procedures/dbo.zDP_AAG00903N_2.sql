SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00903N_2] (@BS int, @aaBudget char(15), @YEAR1 smallint, @aaBudget_RS char(15), @YEAR1_RS smallint, @aaBudget_RE char(15), @YEAR1_RE smallint) AS  set nocount on IF @aaBudget_RS IS NULL BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE ( aaBudget = @aaBudget AND YEAR1 > @YEAR1 OR aaBudget > @aaBudget ) ORDER BY aaBudget ASC, YEAR1 ASC END ELSE IF @aaBudget_RS = @aaBudget_RE BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE aaBudget = @aaBudget_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND ( aaBudget = @aaBudget AND YEAR1 > @YEAR1 OR aaBudget > @aaBudget ) ORDER BY aaBudget ASC, YEAR1 ASC END ELSE BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE aaBudget BETWEEN @aaBudget_RS AND @aaBudget_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND ( aaBudget = @aaBudget AND YEAR1 > @YEAR1 OR aaBudget > @aaBudget ) ORDER BY aaBudget ASC, YEAR1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00903N_2] TO [DYNGRP]
GO
