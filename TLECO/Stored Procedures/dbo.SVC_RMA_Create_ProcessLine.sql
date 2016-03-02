SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RMA_Create_ProcessLine] ( @RecType smallint,  @RMANumber char(15),  @Line Numeric(19,5), @ProcessLine Numeric(19,5), @SerialSeq int,  @Qty numeric(19,5), @ProcessQty numeric(19,5), @ProcessType smallint, @CMPNTSEQ int = 0, @QTYType smallint = 1 )  as declare @Sequence int declare @SerialLotQty numeric(19,5), @Serials numeric(19,2) declare @Disposition smallint, @Tracking smallint declare @Item char(31) declare @QTYONHND numeric(19,5), @QTYRTRND numeric(19,5), @QTYINUSE numeric(19,5), @QTYINSVC numeric(19,5), @QTYDMGED numeric(19,5) declare @SerialLotQTyType smallint declare @ProcessedQty numeric(19,5)  if @RecType = 2 return  select @Item= isnull(Return_Item_Number, ITEMNMBR),  @QTYONHND = QTYONHND , @QTYRTRND = QTYRTRND , @QTYINUSE = QTYINUSE , @QTYINSVC = QTYINSVC , @QTYDMGED = QTYDMGED  from SVC05200 where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and svcRMAComponentSeq = @CMPNTSEQ select @Tracking = ITMTRKOP from IV00101 where ITEMNMBR = @Item  if @ProcessLine = 0   begin  select @Serials = isnull(sum(SERLTQTY),0) from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  if @Serials = 0 and @Tracking >= 2   return  if @Serials = 0  BEGIN  if exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and SVC_Process_QTY > 0 and SVC_Process_Type = 1 and Return_Disposition_Statu = 0)  delete from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and SVC_Process_QTY > 0 and SVC_Process_Type = 1 and Return_Disposition_Statu = 0   if @QTYONHND > 0   begin  select @ProcessedQty = isnull(SUM(SVC_Process_QTY),0) from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and QTYTYPE = 1  if @QTYONHND > @ProcessedQty  begin  select @Sequence = isnull(Max(SVC_Process_SEQ_Number),0) + 1 from SVC05210  where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  insert SVC05210 select @RecType, @RMANumber, @Line, @Sequence, 0, @QTYONHND, @QTYONHND-@ProcessedQty, @ProcessType, 0, '','', 0, @CMPNTSEQ, 1  end  end  if @QTYRTRND > 0   begin  select @ProcessedQty = isnull(SUM(SVC_Process_QTY),0) from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and QTYTYPE = 2  if @QTYRTRND > @ProcessedQty  begin  select @Sequence = isnull(Max(SVC_Process_SEQ_Number),0) + 1 from SVC05210  where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  insert SVC05210 select @RecType, @RMANumber, @Line, @Sequence, 0, @QTYRTRND, @QTYRTRND-@ProcessedQty, @ProcessType, 0, '','', 0, @CMPNTSEQ, 2  end  end  if @QTYINUSE > 0   begin  select @ProcessedQty = isnull(SUM(SVC_Process_QTY),0) from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and QTYTYPE = 3  if @QTYINUSE > @ProcessedQty  begin  select @Sequence = isnull(Max(SVC_Process_SEQ_Number),0) + 1 from SVC05210  where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  insert SVC05210 select @RecType, @RMANumber, @Line, @Sequence, 0, @QTYINUSE, @QTYINUSE-@ProcessedQty, @ProcessType, 0, '','', 0, @CMPNTSEQ, 3  end  end  if @QTYINSVC > 0   begin  select @ProcessedQty = isnull(SUM(SVC_Process_QTY),0) from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and QTYTYPE = 4  if @QTYINSVC > @ProcessedQty  begin  select @Sequence = isnull(Max(SVC_Process_SEQ_Number),0) + 1 from SVC05210  where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  insert SVC05210 select @RecType, @RMANumber, @Line, @Sequence, 0, @QTYINSVC, @QTYINSVC-@ProcessedQty, @ProcessType, 0, '','', 0, @CMPNTSEQ, 4  end  end  if @QTYDMGED > 0   begin  select @ProcessedQty = isnull(SUM(SVC_Process_QTY),0) from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and QTYTYPE = 5  if @QTYDMGED > @ProcessedQty  begin  select @Sequence = isnull(Max(SVC_Process_SEQ_Number),0) + 1 from SVC05210  where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  insert SVC05210 select @RecType, @RMANumber, @Line, @Sequence, 0, @QTYDMGED, @QTYDMGED-@ProcessedQty, @ProcessType, 0, '','', 0, @CMPNTSEQ, 5  end  end   END  else  BEGIN  if @Serials = @Qty  declare Process_Line cursor for select SLTSQNUM, SERLTQTY, QTYTYPE from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  else  declare Process_Line cursor for select SLTSQNUM ,SERLTQTY, QTYTYPE from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and POSTED = 1 and CMPNTSEQ = @CMPNTSEQ  open Process_Line   fetch next from Process_Line into @SerialSeq, @SerialLotQty, @SerialLotQTyType  while @@FETCH_STATUS = 0  Begin  if not exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and SLTSQNUM = @SerialSeq and Return_Disposition_Statu = 2 and SVC_Process_Type = 3)  Begin  if not exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and SLTSQNUM = @SerialSeq and SVC_Process_Type = @ProcessType)  and not exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and  SLTSQNUM = @SerialSeq and Return_Disposition_Statu < 2)   begin  select @Sequence = isnull(Max(SVC_Process_SEQ_Number),0) + 1 from SVC05210  where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  insert SVC05210 select  @RecType, @RMANumber, @Line, @Sequence,@SerialSeq, @SerialLotQty, @SerialLotQty, @ProcessType, 0, '','', 0, @CMPNTSEQ, @SerialLotQTyType  end   End  fetch next from Process_Line into @SerialSeq, @SerialLotQty, @SerialLotQTyType  End  deallocate Process_Line   END  end ELSE  Begin  if not exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line  and CMPNTSEQ = @CMPNTSEQ and SVC_Process_SEQ_Number = @ProcessLine and SLTSQNUM = @SerialSeq )  BEGIN  select @Sequence = isnull(Max(SVC_Process_SEQ_Number),0) + 1 from SVC05210  where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  insert SVC05210 select  @RecType, @RMANumber, @Line, @Sequence,@SerialSeq, @Qty, @ProcessQty, @ProcessType, 1, '','', 0, @CMPNTSEQ, @QTYType  END  End  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Create_ProcessLine] TO [DYNGRP]
GO
