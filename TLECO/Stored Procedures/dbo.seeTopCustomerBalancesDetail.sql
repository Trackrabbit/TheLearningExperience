SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeTopCustomerBalancesDetail]   @Customer char(15) = NULL,   @MaxCustomers int = NULL as if @Customer <> ''    select [Customer Number], [Customer Balance], [Aging Bucket1],[Aging Bucket2],[Aging Bucket3],[Aging Bucket4],   [Aging Bucket5], [Aging Bucket6], [Aging Bucket7], [Customer Name],[Address 1],[Address 2],[City],   [State],[Zip],[Phone 1]   from Customers with (noLock)   where [Customer Number] = @Customer  else  if @MaxCustomers <> 0   select top (select @MaxCustomers)    [Customer Number], [Customer Balance], [Aging Bucket1],[Aging Bucket2],[Aging Bucket3],[Aging Bucket4],   [Aging Bucket5], [Aging Bucket6], [Aging Bucket7], [Customer Name],[Address 1],[Address 2],[City],   [State],[Zip],[Phone 1]   from Customers with (noLock)   order by [Customer Balance] desc, [Customer Number] asc  else   select [Customer Number], [Customer Balance], [Aging Bucket1],[Aging Bucket2],[Aging Bucket3],[Aging Bucket4],   [Aging Bucket5], [Aging Bucket6], [Aging Bucket7], [Customer Name],[Address 1],[Address 2],[City],   [State],[Zip],[Phone 1]   from Customers with (noLock)   order by [Customer Balance] desc, [Customer Number] asc          
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetail] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetail] TO [rpt_order processor]
GO
