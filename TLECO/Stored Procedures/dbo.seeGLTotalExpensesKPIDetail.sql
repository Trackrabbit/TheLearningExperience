SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLTotalExpensesKPIDetail]  @UserDate datetime = NULL as  declare   @CurrentBalanceExpenses numeric(19,5),  @PreviousBalanceExpenses numeric(19,5),  @LastYearBalanceExpenses numeric(19,5)  SELECT  sum(s1.CurrentBalance) as CurrentBalance,  sum(s1.PreviousBalance) as PreviousBalance,  s1.OrderingDate,  s1.Label  FROM   (SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 33) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 34) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 35) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 36) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 37) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 38) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 39) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 40) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 41) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 42) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 47) UNION  SELECT   AcctCat,  case when CurrentBalance < 0 then 0 Else CurrentBalance End,  case when PreviousBalance < 0 then 0 Else PreviousBalance End,  OrderingDate,  Label   FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 46)) s1 GROUP BY OrderingDate, Label    
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIDetail] TO [rpt_executive]
GO
