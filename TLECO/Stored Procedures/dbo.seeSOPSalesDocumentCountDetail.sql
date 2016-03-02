SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeSOPSalesDocumentCountDetail]  @CustomerNumber varchar(50) = null,  @DocumentDateStart datetime = null,  @DocumentDateEnd datetime = null,  @DocumentType varchar(50) = null as if @DocumentDateEnd is null or @DocumentDateStart is null  if @CustomerNumber is null   if @DocumentType is null    select *      from SalesTransactions   else    select *      from SalesTransactions     where [SOP Type] = @DocumentType  else   if @DocumentType is null    select *      from SalesTransactions     where [Customer Number] = @CustomerNumber   else    select *      from SalesTransactions     where [Customer Number] = @CustomerNumber      and [SOP Type] = @DocumentType if @DocumentDateEnd is not null and @DocumentDateStart is not null  if @CustomerNumber is null   if @DocumentType is null    select *      from SalesTransactions     where ([Document Date] >= @DocumentDateStart and [Document Date] <= @DocumentDateEnd)   else    select *      from SalesTransactions     where [SOP Type] = @DocumentType      and ([Document Date] >= @DocumentDateStart and [Document Date] <= @DocumentDateEnd)  else   if @DocumentType is null    select *      from SalesTransactions     where [Customer Number] = @CustomerNumber      and ([Document Date] >= @DocumentDateStart and [Document Date] <= @DocumentDateEnd)   else    select *      from SalesTransactions     where [Customer Number] = @CustomerNumber      and [SOP Type] = @DocumentType      and ([Document Date] >= @DocumentDateStart and [Document Date] <= @DocumentDateEnd)          
GO
GRANT EXECUTE ON  [dbo].[seeSOPSalesDocumentCountDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPSalesDocumentCountDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPSalesDocumentCountDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeSOPSalesDocumentCountDetail] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPSalesDocumentCountDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSOPSalesDocumentCountDetail] TO [rpt_order processor]
GO
