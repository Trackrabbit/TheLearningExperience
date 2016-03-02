SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeTopCustomerBalances]   @MaxCustomers int = NULL as if @MaxCustomers <> 0  select top (select @MaxCustomers) [Customer Number], [Customer Balance] from Customers with (noLock)   order by [Customer Balance] desc, [Customer Number] asc else  select [Customer Number], [Customer Balance] from Customers with (noLock)   order by [Customer Balance] desc, [Customer Number] asc          
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalances] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalances] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalances] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalances] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalances] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalances] TO [rpt_order processor]
GO
