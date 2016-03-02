SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Lot_Get_Next_DateSeq] ( @lot_number char(20),  @item_number char(30),  @location_code char(11),  @Qty numeric(19,5), @date_received datetime, @Seq  numeric(19,5) output ) as  select @Seq = isnull(max(DTSEQNUM),0) from IV00300   where ITEMNMBR = @item_number and LOCNCODE = @location_code and LOTNUMBR = @lot_number and DATERECD = @date_received and LTNUMSLD = 0  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Lot_Get_Next_DateSeq] TO [DYNGRP]
GO
