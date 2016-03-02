SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seePMPayablesAgingDetail]  @AgingBucket varchar(50) as select * from PayablesTransactions  where [Aging Bucket Description] = @AgingBucket          
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesAgingDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesAgingDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesAgingDetail] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesAgingDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesAgingDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesAgingDetail] TO [rpt_executive]
GO
