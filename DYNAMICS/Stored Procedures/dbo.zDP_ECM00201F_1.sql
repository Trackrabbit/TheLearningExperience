SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM00201F_1] (@CompanyID_RS int, @SessionID_RS int, @BudgetID_RS char(15), @PeriodID_RS smallint, @ActIndx_RS int, @CompanyID_RE int, @SessionID_RE int, @BudgetID_RE char(15), @PeriodID_RE smallint, @ActIndx_RE int) AS  set nocount on IF @CompanyID_RS IS NULL BEGIN SELECT TOP 25  CompanyID, SessionID, BudgetID, PeriodID, BudgetAmt, Accatnum, ActIndx, DEX_ROW_ID FROM .ECM00201 ORDER BY CompanyID ASC, SessionID ASC, BudgetID ASC, PeriodID ASC, ActIndx ASC END ELSE IF @CompanyID_RS = @CompanyID_RE BEGIN SELECT TOP 25  CompanyID, SessionID, BudgetID, PeriodID, BudgetAmt, Accatnum, ActIndx, DEX_ROW_ID FROM .ECM00201 WHERE CompanyID = @CompanyID_RS AND SessionID BETWEEN @SessionID_RS AND @SessionID_RE AND BudgetID BETWEEN @BudgetID_RS AND @BudgetID_RE AND PeriodID BETWEEN @PeriodID_RS AND @PeriodID_RE AND ActIndx BETWEEN @ActIndx_RS AND @ActIndx_RE ORDER BY CompanyID ASC, SessionID ASC, BudgetID ASC, PeriodID ASC, ActIndx ASC END ELSE BEGIN SELECT TOP 25  CompanyID, SessionID, BudgetID, PeriodID, BudgetAmt, Accatnum, ActIndx, DEX_ROW_ID FROM .ECM00201 WHERE CompanyID BETWEEN @CompanyID_RS AND @CompanyID_RE AND SessionID BETWEEN @SessionID_RS AND @SessionID_RE AND BudgetID BETWEEN @BudgetID_RS AND @BudgetID_RE AND PeriodID BETWEEN @PeriodID_RS AND @PeriodID_RE AND ActIndx BETWEEN @ActIndx_RS AND @ActIndx_RE ORDER BY CompanyID ASC, SessionID ASC, BudgetID ASC, PeriodID ASC, ActIndx ASC END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM00201F_1] TO [DYNGRP]
GO
