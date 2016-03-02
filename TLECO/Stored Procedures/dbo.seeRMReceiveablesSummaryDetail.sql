SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeRMReceiveablesSummaryDetail]  @DocumentType varchar(50) = null,  @CustomerNumber varchar(50) = null,  @TransactionDateFrom datetime = null,  @TransactionDateTo datetime = null as if @TransactionDateFrom is null and @TransactionDateTo is null begin  if @CustomerNumber is null   if @DocumentType is null    select *      from ReceivablesTransactions   else    select *      from ReceivablesTransactions     where [Document Type] = @DocumentType  else   if @DocumentType is null    select *      from ReceivablesTransactions     where [Customer Number] = @CustomerNumber   else    select *      from ReceivablesTransactions     where [Document Type] = @DocumentType      and [Customer Number] = @CustomerNumber end else  if @CustomerNumber is null   if @DocumentType is null    select *      from ReceivablesTransactions     where ([Document Date] >= @TransactionDateFrom and [Document Date] <= @TransactionDateTo)   else    select *      from ReceivablesTransactions     where [Document Type] = @DocumentType      and ([Document Date] >= @TransactionDateFrom and [Document Date] <= @TransactionDateTo)  else   if @DocumentType is null    select *      from ReceivablesTransactions     where [Customer Number] = @CustomerNumber      and ([Document Date] >= @TransactionDateFrom and [Document Date] <= @TransactionDateTo)   else    select *      from ReceivablesTransactions     where [Document Type] = @DocumentType      and [Customer Number] = @CustomerNumber      and ([Document Date] >= @TransactionDateFrom and [Document Date] <= @TransactionDateTo)          
GO
GRANT EXECUTE ON  [dbo].[seeRMReceiveablesSummaryDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceiveablesSummaryDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceiveablesSummaryDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceiveablesSummaryDetail] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceiveablesSummaryDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceiveablesSummaryDetail] TO [rpt_order processor]
GO
