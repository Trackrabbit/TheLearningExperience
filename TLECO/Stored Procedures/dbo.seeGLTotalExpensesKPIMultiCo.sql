SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLTotalExpensesKPIMultiCo]  @UserDate datetime = NULL,  @TimeUnit varchar(10) = 'Period' as  declare   @CurrentBalanceExpenses numeric(19,5),  @PreviousBalanceExpenses numeric(19,5),  @LastYearBalanceExpenses numeric(19,5)  SELECT   @CurrentBalanceExpenses = ROUND(sum(CurrentBalance),0),  @PreviousBalanceExpenses = ROUND(sum(PreviousBalance),0),  @LastYearBalanceExpenses = ROUND(sum(LastYearBalance),0)  FROM   (SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 33) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 34) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 35) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 36) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 37) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 38) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 39) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 40) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 41) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 42) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 47) UNION  SELECT   AcctCat,  case when CurrentBalance < 0 then 0 Else CurrentBalance End,  case when PreviousBalance < 0 then 0 Else PreviousBalance End,  case when LastYearBalance < 0 then 0 Else LastYearBalance End  FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 46)) s1  select db_name() as CoName,   @CurrentBalanceExpenses as CurrentExpenses,  @PreviousBalanceExpenses as PreviousExpenses,  @LastYearBalanceExpenses as LastYearExpenses,  dbo.CalcPercentChange(@PreviousBalanceExpenses, @CurrentBalanceExpenses) as 'CurrPrevPercChange',  dbo.CalcPercentChange(@LastYearBalanceExpenses, @CurrentBalanceExpenses) as 'CurrLYPercChange'    
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIMultiCo] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIMultiCo] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIMultiCo] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIMultiCo] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIMultiCo] TO [rpt_executive]
GO
