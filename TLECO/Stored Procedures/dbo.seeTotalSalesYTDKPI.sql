SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalSalesYTDKPI]   @UserDate datetime  = NULL as  set dateformat ymd  select((select CurrentBalance from GetGLAcctCatBalanceKPI(@UserDate, 'Year', 'YTD', 31) as CurrentBalance31) -  (select CurrentBalance from GetGLAcctCatBalanceKPI(@UserDate, 'Year', 'YTD', 32)as CurrentBalance32)) as CurrentBalance    
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPI] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPI] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPI] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPI] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPI] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPI] TO [rpt_warehouse manager]
GO
