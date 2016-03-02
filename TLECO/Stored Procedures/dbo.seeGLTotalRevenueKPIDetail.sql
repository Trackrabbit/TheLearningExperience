SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLTotalRevenueKPIDetail]  @UserDate datetime = NULL as  declare   @CurrentBalanceExpenses numeric(19,5),  @PreviousBalanceExpenses numeric(19,5),  @LastYearBalanceExpenses numeric(19,5)  SELECT  ROUND(sum(s1.CurrentBalance),0) as CurrentBalance,  ROUND(sum(s1.PreviousBalance),0) as PreviousBalance,  s1.OrderingDate,  s1.Label  FROM   (SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 31) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 43) UNION  SELECT  AcctCat,  CurrentBalance * -1,  PreviousBalance * -1,  OrderingDate,  Label  FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 32) UNION  SELECT   AcctCat,  case when CurrentBalance > 0 then 0 Else CurrentBalance * -1 End,  case when PreviousBalance > 0 then 0 Else PreviousBalance * -1 End,  OrderingDate,  Label  FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 46)) s1 GROUP BY OrderingDate, Label    
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPIDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPIDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPIDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPIDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPIDetail] TO [rpt_executive]
GO
