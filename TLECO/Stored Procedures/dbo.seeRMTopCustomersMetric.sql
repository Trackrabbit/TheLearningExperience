SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeRMTopCustomersMetric]  @I_iNumCustomers int = NULL as  select   TOP (select @I_iNumCustomers) TTLSLYTD as SalesYTD,  TTLSLLYR as SalesLastYear,  CUSTNMBR as CustomerNumber from  RM00103 with (NOLOCK) order by  TTLSLYTD DESC,  TTLSLLYR DESC    
GO
GRANT EXECUTE ON  [dbo].[seeRMTopCustomersMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeRMTopCustomersMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMTopCustomersMetric] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeRMTopCustomersMetric] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeRMTopCustomersMetric] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMTopCustomersMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeRMTopCustomersMetric] TO [rpt_order processor]
GO
