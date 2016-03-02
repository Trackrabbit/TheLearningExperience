SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Lot_Auto_Get_Next_DateSeq] ( @lot_number char(20),  @item_number char(30),  @location_code char(11),  @Qty numeric(19,5), @date_received datetime output, @Seq  numeric(19,5) output ) as  declare LotSeq cursor for select TOP 1 DATERECD from IV00300  where ITEMNMBR = @item_number and LOCNCODE = @location_code and LOTNUMBR = @lot_number  open LotSeq  FETCH NEXT FROM LotSeq INTO @date_received  while @@FETCH_STATUS = 0  BEGIN  select @Seq = isnull(max(DTSEQNUM),0) from IV00300   where ITEMNMBR = @item_number and LOCNCODE = @location_code and LOTNUMBR = @lot_number and DATERECD = @date_received  FETCH NEXT FROM LotSeq INTO @date_received  END deallocate LotSeq  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Lot_Auto_Get_Next_DateSeq] TO [DYNGRP]
GO
