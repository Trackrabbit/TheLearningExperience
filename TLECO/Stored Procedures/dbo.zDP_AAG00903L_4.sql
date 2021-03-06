SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00903L_4] (@YEAR1_RS smallint, @aaBudget_RS char(15), @YEAR1_RE smallint, @aaBudget_RE char(15)) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 ORDER BY YEAR1 DESC, aaBudget DESC, DEX_ROW_ID DESC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE YEAR1 = @YEAR1_RS AND aaBudget BETWEEN @aaBudget_RS AND @aaBudget_RE ORDER BY YEAR1 DESC, aaBudget DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00903 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND aaBudget BETWEEN @aaBudget_RS AND @aaBudget_RE ORDER BY YEAR1 DESC, aaBudget DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00903L_4] TO [DYNGRP]
GO
