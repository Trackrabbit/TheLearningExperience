SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_RMAUpdateLotDateSeq] ( @RecType smallint,  @RMANumber char(15),  @Line Numeric(19,5), @lot_number char(20),  @item_number char(30),  @rcv_date datetime, @date_seq numeric(19,5), @CMPNTSEQ int = 0 ) as  update SVC05255 set DATERECD = @rcv_date,  DTSEQNUM =@date_seq  where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  and Return_Serial_Number = @lot_number and Return_Item_Number = @item_number  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_RMAUpdateLotDateSeq] TO [DYNGRP]
GO
