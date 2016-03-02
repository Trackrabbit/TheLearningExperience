SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_TransferUpdateLotDateSeq] ( @DocNumber char(15),  @Line int, @lot_number char(20),  @item_number char(30),  @location_code char(11),  @rcv_date datetime, @date_seq numeric(19,5) ) as update SVC00702 set DATERECD = @rcv_date, DTSEQNUM = @date_seq  where ORDDOCID = @DocNumber and TRANSLINESEQ = @Line and SERLTNUM = @lot_number and ITEMNMBR = @item_number   return     
GO
GRANT EXECUTE ON  [dbo].[SVC_TransferUpdateLotDateSeq] TO [DYNGRP]
GO
