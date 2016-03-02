SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalSalesDetailKPI]  @UserDate datetime  = NULL,  @Target numeric(19,5) as  set dateformat ymd  DECLARE @AllBalances TABLE (  AcctCat int,   CurrentBalance numeric (19,5),   PreviousBalance numeric (19,5),  OrderingDate datetime,   Label varchar(21),  TargetSales numeric(19,5) )  INSERT INTO @AllBalances  SELECT *, @Target FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 31) INSERT INTO @AllBalances  SELECT AcctCat, (CurrentBalance * -1) as CurrentBalance, (PreviousBalance * -1) as PreviousBalance, OrderingDate, Label, 0.0 FROM GetGLAcctCatBalanceKPIDetail (@UserDate, 'NetChange', 32)  SELECT sum(CurrentBalance) as CurrentBalance, sum(PreviousBalance) as PreviousBalance, sum(TargetSales) as TargetSales, OrderingDate, Label FROM @AllBalances GROUP BY OrderingDate, Label    
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetailKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetailKPI] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetailKPI] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetailKPI] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetailKPI] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetailKPI] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetailKPI] TO [rpt_warehouse manager]
GO
