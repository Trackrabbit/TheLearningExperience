SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLGrossProfitMarginDetailKPI]  @UserDate datetime  = NULL as  set dateformat ymd  declare   @CurrentBalance numeric(19,5),  @PreviousBalance numeric(19,5),  @LastYearBalance numeric(19,5)  create table #AllBalances  (  AcctCat int,   CurrentBalance Decimal (19,5),   PreviousBalance Decimal (19,5),   OrderingDate datetime,   Label varchar(21) )  INSERT INTO #AllBalances  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate,  'NetChange', 31) INSERT INTO #AllBalances  SELECT * FROM GetGLAcctCatBalanceKPIDetail (@UserDate, 'NetChange', 32) INSERT INTO #AllBalances  SELECT * FROM GetGLAcctCatBalanceKPIDetail (@UserDate, 'NetChange', 33)  select  case   when (a.CurrentAcct31 - b.CurrentAcct32) = 0 then 0.0  else  (a.CurrentAcct31 -b.CurrentAcct32 - c.CurrentAcct33)/(a.CurrentAcct31 - b.CurrentAcct32)  end as CurrentGrossProfitMargin, case  when (a.PreviousAcct31 - b.PreviousAcct32) = 0 then 0.0  else  (a.PreviousAcct31 -b.PreviousAcct32 - c.PreviousAcct33)/(a.PreviousAcct31 - b.PreviousAcct32)  end as PreviousGrossProfitMargin, a.Label, a.OrderingDate from   (select sum(CurrentBalance) as CurrentAcct31, sum(PreviousBalance) as PreviousAcct31, OrderingDate, Label from #AllBalances where AcctCat = 31 group by OrderingDate, Label) a,  (select sum(CurrentBalance) as CurrentAcct32, sum(PreviousBalance) as PreviousAcct32, OrderingDate, Label from #AllBalances where AcctCat = 32 group by OrderingDate, Label) b,  (select sum(CurrentBalance) as CurrentAcct33, sum(PreviousBalance) as PreviousAcct33, OrderingDate, Label from #AllBalances where AcctCat = 33 group by OrderingDate, Label) c where   a.OrderingDate = b.OrderingDate and b.OrderingDate = c.OrderingDate  order by a.OrderingDate    
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginDetailKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginDetailKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginDetailKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginDetailKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMarginDetailKPI] TO [rpt_executive]
GO
