SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcRMAGetSelectedLotQty] ( @RecType smallint,  @RMANumber char(15),  @Line Numeric(19,5), @lot_number char(20),  @item_number char(30),  @rcv_date datetime, @date_seq numeric(19,5), @CMPNTSEQ int = 0, @QTYTYPE smallint, @lot_qty numeric (19,5) output  )  as  if @lot_number = 'RMA Receiving'  begin  select @lot_qty = isnull(sum(SERLTQTY),0) from SVC05255  where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line  and Return_Item_Number = @item_number and CMPNTSEQ = @CMPNTSEQ  and TRXSORCE = 'RMA RCV' and MARKED = 1 and QTYTYPE = @QTYTYPE   end  else   begin  if exists(select * from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line  and Return_Serial_Number = @lot_number and Return_Item_Number = @item_number and CMPNTSEQ = @CMPNTSEQ  and TRXSORCE = 'RMA RCV' and DATERECD  = @rcv_date and DTSEQNUM = @date_seq and MARKED = 1 and QTYTYPE = @QTYTYPE)  begin   select @lot_qty = sum(SERLTQTY) from SVC05255  where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line  and Return_Serial_Number = @lot_number and Return_Item_Number = @item_number and CMPNTSEQ = @CMPNTSEQ  and TRXSORCE = 'RMA RCV' and DATERECD  = @rcv_date and DTSEQNUM = @date_seq and MARKED = 1 and QTYTYPE = @QTYTYPE  end  else  select @lot_qty = 0   end  return     
GO
GRANT EXECUTE ON  [dbo].[svcRMAGetSelectedLotQty] TO [DYNGRP]
GO
