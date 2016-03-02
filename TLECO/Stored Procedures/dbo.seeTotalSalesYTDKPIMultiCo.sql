SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[seeTotalSalesYTDKPIMultiCo] @UserDate datetime = NULL  as   set dateformat ymd    select db_name()as [CoName], ( (select CurrentBalance   from   GetGLAcctCatBalanceKPI(@UserDate, 'Year', 'YTD', 31) as   CurrentBalance31   ) - (select CurrentBalance   from   GetGLAcctCatBalanceKPI(@UserDate, 'Year', 'YTD', 32)as   CurrentBalance32) ) as CurrentBalance     
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPIMultiCo] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPIMultiCo] TO [rpt_executive]
GO
