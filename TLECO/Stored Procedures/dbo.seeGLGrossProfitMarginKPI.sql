SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLGrossProfitMarginKPI]  @UserDate datetime  = NULL,  @TimeUnit varchar(10)  = 'Period' as  set dateformat ymd  declare   @CurrentBalance numeric(19,5),  @PreviousBalance numeric(19,5),  @LastYearBalance numeric(19,5)  create table #AllBalances  (  AcctCat int,   CurrentBalance numeric (19,5),   PreviousBalance numeric (19,5),   LastYearBalance numeric(19,5) )  INSERT INTO #AllBalances  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 31) INSERT INTO #AllBalances  SELECT * FROM GetGLAcctCatBalanceKPI (@UserDate, @TimeUnit, 'NetChange', 32) INSERT INTO #AllBalances  SELECT * FROM GetGLAcctCatBalanceKPI (@UserDate, @TimeUnit, 'NetChange', 33)  if ((select CurrentBalance from #AllBalances where AcctCat = 31) - (select CurrentBalance from #AllBalances where AcctCat = 32))<>0  select @CurrentBalance =   ((select CurrentBalance from #AllBalances where AcctCat = 31) - (select CurrentBalance from #AllBalances where AcctCat = 32) - (select CurrentBalance from #AllBalances where AcctCat = 33))/  ((select CurrentBalance from #AllBalances where AcctCat = 31) - (select CurrentBalance from #AllBalances where AcctCat = 32)) else  select @CurrentBalance = 0.0  if ((select PreviousBalance from #AllBalances where AcctCat = 31) - (select PreviousBalance from #AllBalances where AcctCat = 32)) <> 0  select @PreviousBalance =   ((select PreviousBalance from #AllBalances where AcctCat = 31) - (select PreviousBalance from #AllBalances where AcctCat = 32) - (select PreviousBalance from #AllBalances where AcctCat = 33))/  ((select PreviousBalance from #AllBalances where AcctCat = 31) - (select PreviousBalance from #AllBalances where AcctCat = 32)) else  select @PreviousBalance = 0.0  if ((select LastYearBalance from #AllBalances where AcctCat = 31) - (select LastYearBalance from #AllBalances where AcctCat = 32))<>0  select @LastYearBalance =   ((select LastYearBalance from #AllBalances where AcctCat = 31) - (select LastYearBalance from #AllBalances where AcctCat = 32) - (select LastYearBalance from #AllBalances where AcctCat = 33))/  ((select LastYearBalance from #AllBalances where AcctCat = 31) - (select LastYearBalance from #AllBalances where AcctCat = 32))  else  select @LastYearBalance = 0.0  select round(@CurrentBalance,2) as CurrentBalance, round(@PreviousBalance,2) as PreviousBalance, round(@LastYearBalance,2) as LastYearBalance,  dbo.CalcPercentChange(round(@PreviousBalance, 2), round(@CurrentBalance,2)) as 'CurrPrevPercChange',  dbo.CalcPercentChange(round(@LastYearBalance,2), round(@CurrentBalance,2)) as 'CurrLYPercChange'    
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginKPI] TO [rpt_executive]
GO
