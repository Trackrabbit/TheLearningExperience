SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_RMA_Receiving_Change] (@RMA char(15),  @LineNumber numeric(19,5),  @UserID char(15)) as  declare @SerialSeq int, @line integer declare @TransferNumber char(15) declare @ItemNumber char(31),@oldItem char(31),@SerialNumber char(21),@oldSerial char(21) declare @Qty numeric(19,5), @Return_Qty numeric(19,5) declare @CallNumber char(11) declare @desc char(51) declare @Sequence numeric(19,5) declare @ProcessType smallint declare @SerialTrack smallint declare @SerialChanged tinyint declare @LineSerialSeq int declare @Bin char(15) declare @Intransit char(15) declare @ServiceLine int  select @oldItem = ITEMNMBR, @Qty = QUANTITY, @ItemNumber = Return_Item_Number, @Return_Qty = Return_QTY  from SVC05015 where RETDOCID=@RMA and LNSEQNBR = @LineNumber and USERID = @UserID if exists(select * from SVC05255 where RETDOCID=@RMA and LNSEQNBR = @LineNumber and SVC_Original_Serial = 0 and MARKED = 1)  BEGIN  select @SerialChanged = 1  declare Process_Line cursor for select SLTSQNUM  from SVC05255 where RETDOCID = @RMA and LNSEQNBR = @LineNumber and SVC_Original_Serial = 0  open Process_Line   fetch next from Process_Line into @SerialSeq  while @@FETCH_STATUS = 0  Begin  if exists(select * from SVC05210 where RETDOCID = @RMA and Return_Record_Type = 1 and  LNSEQNBR = @LineNumber and  SLTSQNUM = @SerialSeq and Return_Disposition_Statu = 0)  begin  delete from SVC05210 where RETDOCID = @RMA and Return_Record_Type = 1 and  LNSEQNBR = @LineNumber and  SLTSQNUM = @SerialSeq and Return_Disposition_Statu = 0  end  fetch next from Process_Line into @SerialSeq  End  deallocate Process_Line   END else  select @SerialChanged = 0  select @desc = ITEMDESC, @SerialTrack = ITMTRKOP from IV00101 where ITEMNMBR = @ItemNumber if exists(select * from SVC00701 where RETDOCID=@RMA and LNSEQNBR = @LineNumber)  begin  select @TransferNumber = ORDDOCID, @line=LNITMSEQ, @oldItem = ITEMNMBR from SVC00701  where RETDOCID=@RMA and LNSEQNBR = @LineNumber  select @Intransit = isnull(ITLOCN,'') from SVC00700 where ORDDOCID = @TransferNumber  update SVC00701 set ITEMNMBR = @ItemNumber, DSCRIPTN = substring(@desc,1,30)   where RETDOCID=@RMA and LNSEQNBR = @LineNumber and ORDDOCID = @TransferNumber  select @CallNumber = CALLNBR, @ServiceLine = LNITMSEQ from SVC00203 where RETDOCID = @RMA and ORDDOCID = @TransferNumber  update SVC00203 set ITEMNMBR = @ItemNumber,ITEMDESC = @desc where RETDOCID = @RMA and ORDDOCID = @TransferNumber  if @SerialTrack = 2 and @SerialChanged = 1  BEGIN  declare New_Serial_Line cursor for select Return_Item_Number, Return_Serial_Number, BIN from SVC05255 where RETDOCID = @RMA and LNSEQNBR = @LineNumber and SVC_Original_Serial = 0 and MARKED = 1  declare Serial_Line cursor for select Return_Item_Number, Return_Serial_Number from SVC05255 where RETDOCID = @RMA and LNSEQNBR = @LineNumber and SVC_Original_Serial = 1 and MARKED = 0  open Serial_Line   open New_Serial_Line   fetch next from Serial_Line into @oldItem, @oldSerial  while @@FETCH_STATUS = 0  Begin  select @LineSerialSeq = SLTSQNUM, @line = TRANSLINESEQ from SVC00702 where ORDDOCID = @TransferNumber   and ITEMNMBR = @oldItem and SERLTNUM = @oldSerial  fetch next from New_Serial_Line into @ItemNumber, @SerialNumber, @Bin  if @@FETCH_STATUS = 0   Begin  if @Intransit > ''  update SVC00702 set SERLTNUM = @SerialNumber, ITEMNMBR =  @ItemNumber   where ORDDOCID = @TransferNumber and TRANSLINESEQ = @line and SLTSQNUM = @LineSerialSeq  else  update SVC00702 set SERLTNUM = @SerialNumber, ITEMNMBR =  @ItemNumber , TOBIN = @Bin  where ORDDOCID = @TransferNumber and TRANSLINESEQ = @line and SLTSQNUM = @LineSerialSeq  update SVC00250 set SERLTNUM = @SerialNumber, ITEMNMBR =  @ItemNumber   where CALLNBR = @CallNumber and ITEMNMBR = @oldItem and SERLTNUM = @oldSerial  End  fetch next from Serial_Line into @oldItem, @oldSerial  End  deallocate Serial_Line   deallocate New_Serial_Line   END  if @SerialTrack = 2 and @oldItem <> @ItemNumber   BEGIN  update SVC00702 set  ITEMNMBR =  @ItemNumber   where ORDDOCID = @TransferNumber and TRANSLINESEQ = @line   update SVC00250 set ITEMNMBR =  @ItemNumber   where CALLNBR = @CallNumber and ITEMNMBR = @oldItem and LNITMSEQ = @ServiceLine  END  end else  BEGIN  select @CallNumber = CALLNBR, @line = LNITMSEQ from SVC05200 where RETDOCID = @RMA and   LNSEQNBR = @LineNumber  if @CallNumber > ''  begin  update SVC00203 set ITEMNMBR = @ItemNumber,ITEMDESC = @desc where  CALLNBR = @CallNumber and LNITMSEQ = @line and LINITMTYP = 'P'  end  END return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Receiving_Change] TO [DYNGRP]
GO