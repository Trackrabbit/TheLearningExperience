SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Service_Call_Create_Lot] ( @RecType smallint,  @DocNumber char(15),  @EquipLine  int, @Line int, @ItemUseType char(1), @lot_number char(20),  @item_number char(30),  @location_code char(11),  @item_cost numeric(19,5), @rcv_date datetime, @date_seq numeric(19,5), @lot_qty numeric (19,5), @Bin char(15), @ExpDate datetime, @MfgDate datetime, @CMPNTSEQ int = 0  )  as declare @LotSequence int declare @UserID char(15)  select @UserID = SYSTEM_USER if @Bin = '' and (select ENABLEMULTIBIN from IV40100) = 1  begin  if @ItemUseType = 'R'  exec SVC_Bin_GetDefault @item_number, @location_code, 'R', @Bin output  else  exec SVC_Bin_GetDefault @item_number, @location_code, 'I', @Bin output  end  begin transaction  if not exists(select * from SVC00250 where SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = @EquipLine and LINITMTYP = 'P' and CMPNTSEQ = @CMPNTSEQ  and LNITMSEQ = @Line and SERLTNUM = @lot_number and ITEMNMBR = @item_number and DATERECD = @rcv_date and DTSEQNUM = @date_seq)  begin   select @LotSequence = isnull(Max(SLTSQNUM),0) + 1 from SVC00250  where SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = @EquipLine and LINITMTYP = 'P' and LNITMSEQ = @Line  insert SVC00250 select  @RecType, @DocNumber, @EquipLine, 'P', @Line, 1, @lot_number, @lot_qty, @LotSequence, isnull(@rcv_date,CONVERT(char(10),GETDATE(),102) + ' 00:00:00') ,  isnull(@date_seq,1),  @item_cost, @item_number, 'Service Call' , 0, 1, 0, isnull(@Bin,''),   isnull(@MfgDate,'01/01/1900 00:00:00') ,isnull(@ExpDate,'01/01/1900 00:00:00'), @CMPNTSEQ  if @@error <> 0 goto badentry  end else  begin  update SVC00250 set SERLTQTY = SERLTQTY + @lot_qty   where SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = @EquipLine and LINITMTYP = 'P' and CMPNTSEQ = @CMPNTSEQ  and LNITMSEQ = @Line and SERLTNUM = @lot_number and ITEMNMBR = @item_number and DATERECD = @rcv_date and DTSEQNUM = @date_seq  end  commit transaction  return badentry:  rollback transaction  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Service_Call_Create_Lot] TO [DYNGRP]
GO