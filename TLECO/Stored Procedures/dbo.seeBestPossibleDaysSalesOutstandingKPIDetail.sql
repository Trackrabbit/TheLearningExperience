SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeBestPossibleDaysSalesOutstandingKPIDetail]  @UserDate datetime  = NULL as  set dateformat ymd  declare   @CurrentBalance numeric(19,5),  @PreviousBalance numeric(19,5),  @LastYearBalance numeric(19,5)  create table #AllBalances  (  AcctCat int,   CurrentBalance Decimal (19,5),   PreviousBalance Decimal (19,5),   OrderingDate datetime,   Label varchar(21),  CurrNumOfDays int,  PrevNumOfDays int,  DaysOutstanding decimal(19,5) )  INSERT INTO #AllBalances  SELECT *, 0, 0, 0.0 FROM GetGLAcctCatBalanceKPIDetail(@UserDate,  'NetChange', 31) INSERT INTO #AllBalances  SELECT *, 0, 0, 0.0 FROM GetGLAcctCatBalanceKPIDetail (@UserDate, 'NetChange', 32)  DECLARE @KpiDetailDates TABLE (  StartDate datetime,  EndDate datetime,  DateLabel varchar(21),  CurrPrevType int )  INSERT INTO @KpiDetailDates  SELECT   StartDate, EndDate, DateLabel, CurrPrevType  FROM   GetKPIDetailDates(@UserDate, 'Fiscal')  INSERT INTO #AllBalances  SELECT 3, isnull((select SUM(SLSAMNT) from RM20101 where RMDTYPAL = 1 and DUEDATE >= x.EndDate and CurrPrevType = 1),0),  isnull((select SUM(SLSAMNT) from RM20101 where RMDTYPAL = 1 and DUEDATE >= x.EndDate and CurrPrevType = 0),0),  EndDate, DateLabel, 0, 0, 0 from @KpiDetailDates x  create table #NumberOfDays (  StartDate datetime,  EndDate datetime,  DateLabel varchar(21),  CurrPrevType int )  insert into #NumberOfDays select * from GetKPIDetailDates(@UserDate, 'Fiscal')  update #AllBalances set  CurrNumOfDays = DATEDIFF(DD, StartDate, EndDate)+1 from #NumberOfDays where #AllBalances.Label = #NumberOfDays.DateLabel and #NumberOfDays.CurrPrevType = 1  update #AllBalances set  PrevNumOfDays =  DATEDIFF(DD, StartDate, EndDate)+1 from #NumberOfDays where #AllBalances.Label = #NumberOfDays.DateLabel and #NumberOfDays.CurrPrevType = 0  update #AllBalances set OrderingDate = EndDate from #NumberOfDays  where #AllBalances.Label = #NumberOfDays.DateLabel  select case   when (a.CurrentBalance - b.CurrentBalance = 0) then 0.0  else  ((c.CurrentBalance)/(a.CurrentBalance - b.CurrentBalance)) * a.CurrNumOfDays end as CurrentDaysOutstanding, case   when (a.PreviousBalance - b.PreviousBalance = 0) then 0.0  else  ((c.PreviousBalance)/(a.PreviousBalance - b.PreviousBalance)) * a.PrevNumOfDays end as PreviousDaysOutstanding, a.OrderingDate, a.Label  from   (select * from #AllBalances where AcctCat = 31) a,  (select * from #AllBalances where AcctCat = 32) b,  (select * from #AllBalances where AcctCat = 3) c where  a.OrderingDate = b.OrderingDate and b.OrderingDate = c.OrderingDate order  by a.OrderingDate     
GO
GRANT EXECUTE ON  [dbo].[seeBestPossibleDaysSalesOutstandingKPIDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeBestPossibleDaysSalesOutstandingKPIDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeBestPossibleDaysSalesOutstandingKPIDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeBestPossibleDaysSalesOutstandingKPIDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeBestPossibleDaysSalesOutstandingKPIDetail] TO [rpt_executive]
GO
