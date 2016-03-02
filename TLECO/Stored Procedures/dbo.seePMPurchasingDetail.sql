SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seePMPurchasingDetail]  @VendorID varchar(50) = null,  @TransactionDateStart datetime = null,  @TransactionDateEnd datetime = null,  @DocumentType varchar(50) = null as if @TransactionDateStart is not null and @TransactionDateEnd is not null  if @VendorID is not null and @DocumentType is not null   select *     from PayablesTransactions    where [Vendor ID] = @VendorID     and ([Document Date] >= @TransactionDateStart and [Document Date] <= @TransactionDateEnd)     and [Document Type] = @DocumentType  else  if @VendorID is not null and @DocumentType is null   select *     from PayablesTransactions    where [Vendor ID] = @VendorID     and ([Document Date] >= @TransactionDateStart and [Document Date] <= @TransactionDateEnd)  else  if @VendorID is null and @DocumentType is not null   select *     from PayablesTransactions    where [Document Type] = @DocumentType     and ([Document Date] >= @TransactionDateStart and [Document Date] <= @TransactionDateEnd)  else  if @VendorID is null and @DocumentType is null   select *     from PayablesTransactions    where ([Document Date] >= @TransactionDateStart and [Document Date] <= @TransactionDateEnd) if @TransactionDateStart is null and @TransactionDateEnd is null  if @VendorID is not null and @DocumentType is not null   select *     from PayablesTransactions    where [Vendor ID] = @VendorID     and [Document Type] = @DocumentType  if @VendorID is not null and @DocumentType is null   select *     from PayablesTransactions    where [Vendor ID] = @VendorID  else  if @VendorID is null and @DocumentType is not null   select *     from PayablesTransactions    where [Document Type] = @DocumentType  else  if @VendorID is null and @DocumentType is null   select *     from PayablesTransactions          
GO
GRANT EXECUTE ON  [dbo].[seePMPurchasingDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePMPurchasingDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seePMPurchasingDetail] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seePMPurchasingDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seePMPurchasingDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seePMPurchasingDetail] TO [rpt_purchasing manager]
GO
