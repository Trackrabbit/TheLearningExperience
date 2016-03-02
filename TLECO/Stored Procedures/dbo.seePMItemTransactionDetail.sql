SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seePMItemTransactionDetail]  @ItemNumber varchar(50) = null,  @TransactionDateFrom datetime = null,  @TransactionDateTo datetime = null,  @Buyer varchar(max),  @Vendor varchar(max) as if @Buyer = '' and @Vendor = '' begin  if @TransactionDateFrom is null or @TransactionDateTo is null  begin   select * from PurchaseLineItems where    (@ItemNumber is null or [Item Number] = @ItemNumber)   end   if @TransactionDateFrom is not null and @TransactionDateTo is not null  begin   select * from PurchaseLineItems where    (@ItemNumber is null or [Item Number] = @ItemNumber)     and ([Document Date] >= @TransactionDateFrom and [Document Date] <= @TransactionDateTo)  end  end else begin  if @Buyer != ''  begin   if @TransactionDateFrom is null or @TransactionDateTo is null   begin    select * from PurchaseLineItems where     (@ItemNumber is null or [Item Number] = @ItemNumber)      and [Buyer ID] in (select * from dbo.seeSplitString(@Buyer, ','))    end    if @TransactionDateFrom is not null and @TransactionDateTo is not null   begin    select * from PurchaseLineItems where     (@ItemNumber is null or [Item Number] = @ItemNumber)      and ([Document Date] >= @TransactionDateFrom and [Document Date] <= @TransactionDateTo)     and [Buyer ID] in (select * from dbo.seeSplitString(@Buyer, ','))   end   end  else  begin   if @TransactionDateFrom is null or @TransactionDateTo is null   begin    select * from PurchaseLineItems where     (@ItemNumber is null or [Item Number] = @ItemNumber)      and [Vendor ID] in (select * from dbo.seeSplitString(@Vendor, ','))     end   if @TransactionDateFrom is not null and @TransactionDateTo is not null   begin    select * from PurchaseLineItems where     (@ItemNumber is null or [Item Number] = @ItemNumber)      and ([Document Date] >= @TransactionDateFrom and [Document Date] <= @TransactionDateTo)     and [Vendor ID] in (select * from dbo.seeSplitString(@Vendor, ','))    end   end end          
GO
GRANT EXECUTE ON  [dbo].[seePMItemTransactionDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePMItemTransactionDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seePMItemTransactionDetail] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seePMItemTransactionDetail] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seePMItemTransactionDetail] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seePMItemTransactionDetail] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[seePMItemTransactionDetail] TO [rpt_shipping and receiving]
GO
