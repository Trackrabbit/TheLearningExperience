SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeARDaysOutstandingKPI]  @UserDate datetime  = NULL,  @TimeUnit varchar(10)  = 'Period' as  set dateformat ymd  declare   @CurrentBalance numeric(19,5),  @PreviousBalance numeric(19,5),  @LastYearBalance numeric(19,5),  @NumOfDays int,  @sdc datetime,  @edc datetime,  @sdp datetime,  @edp datetime,  @sdly datetime,  @edly datetime  create table #AllBalances  (  AcctCat int,  CurrentBalance numeric (19,5),  PreviousBalance numeric (19,5),  LastYearBalance numeric(19,5),  CurrentNumOfDays int,  PrevNumOfDays int,  LYNumOfDays int )  INSERT INTO #AllBalances  SELECT *, 0, 0, 0 FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'NetChange', 31) INSERT INTO #AllBalances  SELECT *, 0, 0, 0 FROM GetGLAcctCatBalanceKPI (ISNULL(@UserDate,GetDate()), @TimeUnit, 'NetChange', 32) INSERT INTO #AllBalances  SELECT *, 0, 0, 0 FROM GetGLAcctCatBalanceKPI (ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 3)  SELECT   @sdc = SDCurrent,   @edc = EDCurrent,   @sdp = SDPrevious,   @edp = EDPrevious,   @sdly = SDLastYear,   @edly = EDLastYear  FROM   dbo.GetKPIDates(ISNULL(@UserDate,GetDate()), 'Fiscal', @TimeUnit)   update #AllBalances set CurrentNumOfDays = datediff(dd, @sdc, @edc)+1,  PrevNumOfDays = DATEDIFF(dd, @sdp, @edp )+1,  LYNumOfDays = DATEDIFF(dd, @sdly, @edly)+1  if ((select CurrentBalance from #AllBalances where AcctCat = 31) - (select CurrentBalance from #AllBalances where AcctCat = 32))<>0  select @CurrentBalance =   ((select CurrentBalance from #AllBalances where AcctCat = 3)/((select CurrentBalance from #AllBalances where AcctCat = 31) - (select CurrentBalance from #AllBalances where AcctCat = 32))) * (select distinct CurrentNumOfDays from #AllBalances) else  select @CurrentBalance = 0.0  if ((select PreviousBalance from #AllBalances where AcctCat = 31) - (select PreviousBalance from #AllBalances where AcctCat = 32)) <> 0  select @PreviousBalance =  ((select PreviousBalance from #AllBalances where AcctCat = 3)/((select PreviousBalance from #AllBalances where AcctCat = 31) - (select PreviousBalance from #AllBalances where AcctCat = 32))) * (select distinct PrevNumOfDays from #AllBalances) else  select @PreviousBalance = 0.0  if ((select LastYearBalance from #AllBalances where AcctCat = 31) - (select LastYearBalance from #AllBalances where AcctCat = 32))<>0  select @LastYearBalance =   ((select LastYearBalance from #AllBalances where AcctCat = 3)/((select LastYearBalance from #AllBalances where AcctCat = 31) - (select LastYearBalance from #AllBalances where AcctCat = 32))) * (select distinct LYNumOfDays from #AllBalances)  else  select @LastYearBalance = 0.0  select round(@CurrentBalance,2) as CurrentBalance, round(@PreviousBalance,2) as PreviousBalance, round(@LastYearBalance,2) as LastYearBalance,  dbo.CalcPercentChange(@PreviousBalance, @CurrentBalance) as 'CurrPrevPercChange',  dbo.CalcPercentChange(@LastYearBalance, @CurrentBalance) as 'CurrLYPercChange'    
GO
GRANT EXECUTE ON  [dbo].[seeARDaysOutstandingKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeARDaysOutstandingKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeARDaysOutstandingKPI] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeARDaysOutstandingKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeARDaysOutstandingKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeARDaysOutstandingKPI] TO [rpt_executive]
GO
