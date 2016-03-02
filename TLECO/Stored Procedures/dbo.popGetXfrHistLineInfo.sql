SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[popGetXfrHistLineInfo] (  @TransferNumber char(21),  @TransferLine numeric(19,5),  @Status smallint output,  @Qty numeric(19,5) output,  @QtyShipped numeric(19,5) output,  @QtyReceived numeric(19,5) output,  @OrderDate datetime output,  @PromiseDate datetime output,  @ItemNumber char(31) output,  @ItemDesc char(31) output,  @UOM char(10) output ) AS  if exists(select * from SVC00701 where ORDDOCID = @TransferNumber and LNITMSEQ = @TransferLine)  begin  select @Status = STATUS, @Qty = TRNSFQTY, @QtyShipped = QTYSHPPD, @QtyReceived = QTYRECVD,  @ItemNumber = ITEMNMBR, @ItemDesc = DSCRIPTN, @UOM = UOFM from SVC00701 where ORDDOCID = @TransferNumber and LNITMSEQ = @TransferLine  select @OrderDate = ORDRDATE, @PromiseDate = ETADTE from SVC00700 where ORDDOCID = @TransferNumber  end else if exists(select * from SVC30701 where ORDDOCID = @TransferNumber and LNITMSEQ = @TransferLine)  Begin  select @Status = STATUS, @Qty = TRNSFQTY, @QtyShipped = QTYSHPPD, @QtyReceived = QTYRECVD,  @ItemNumber = ITEMNMBR, @ItemDesc = DSCRIPTN, @UOM = UOFM from SVC30701 where ORDDOCID = @TransferNumber and LNITMSEQ = @TransferLine  select @OrderDate = ORDRDATE, @PromiseDate = ETADTE from SVC30700 where ORDDOCID = @TransferNumber  End else  return(99)  if @Qty < 0 or @Qty is null  select @Qty = 0  return    
GO
GRANT EXECUTE ON  [dbo].[popGetXfrHistLineInfo] TO [DYNGRP]
GO
