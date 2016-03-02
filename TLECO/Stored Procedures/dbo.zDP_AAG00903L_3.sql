SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00903L_3] (@aaBudgetDescr_RS char(51), @aaBudget_RS char(15), @aaBudgetDescr_RE char(51), @aaBudget_RE char(15)) AS  set nocount on IF @aaBudgetDescr_RS IS NULL BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 ORDER BY aaBudgetDescr DESC, aaBudget DESC, DEX_ROW_ID DESC END ELSE IF @aaBudgetDescr_RS = @aaBudgetDescr_RE BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE aaBudgetDescr = @aaBudgetDescr_RS AND aaBudget BETWEEN @aaBudget_RS AND @aaBudget_RE ORDER BY aaBudgetDescr DESC, aaBudget DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE aaBudgetDescr BETWEEN @aaBudgetDescr_RS AND @aaBudgetDescr_RE AND aaBudget BETWEEN @aaBudget_RS AND @aaBudget_RE ORDER BY aaBudgetDescr DESC, aaBudget DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00903L_3] TO [DYNGRP]
GO
