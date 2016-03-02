SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeRMReceivablesAgingDetail]  @AgingBucket varchar(50),  @CustomerNumber varchar(max) as if (@CustomerNumber = '') begin  select * from ReceivablesTransactions   where [Aging Bucket Description] = @AgingBucket end else begin  select * from ReceivablesTransactions   where [Aging Bucket Description] = @AgingBucket   and [Customer Number] in (select * from dbo.seeSplitString(@CustomerNumber, ','))  end          
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingDetail] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingDetail] TO [rpt_executive]
GO
