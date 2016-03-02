SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM00201SS_1] (@CompanyID int, @SessionID int, @BudgetID char(15), @PeriodID smallint, @ActIndx int) AS  set nocount on SELECT TOP 1  CompanyID, SessionID, BudgetID, PeriodID, BudgetAmt, Accatnum, ActIndx, DEX_ROW_ID FROM .ECM00201 WHERE CompanyID = @CompanyID AND SessionID = @SessionID AND BudgetID = @BudgetID AND PeriodID = @PeriodID AND ActIndx = @ActIndx ORDER BY CompanyID ASC, SessionID ASC, BudgetID ASC, PeriodID ASC, ActIndx ASC set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM00201SS_1] TO [DYNGRP]
GO
