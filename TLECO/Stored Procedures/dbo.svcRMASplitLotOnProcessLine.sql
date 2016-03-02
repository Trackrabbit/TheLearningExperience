SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcRMASplitLotOnProcessLine] ( @RecType smallint,  @RMANumber char(15), @Line Numeric(19,5), @ProcessLine Numeric(19,5), @SerialSeq int,  @Qty numeric(19,5), @ProcessQty numeric(19,5), @ProcessType smallint, @CMPNTSEQ int = 0, @QTYType smallint = 1 )  as declare @LotSequence int, @Sequence int declare @UserID char(15) declare @MinDate datetime  exec smGetMinDate @MinDate output   select @UserID = SYSTEM_USER select @Sequence = isnull(Max(SVC_Process_SEQ_Number),0) + 1 from SVC05210  where  RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ select @LotSequence = isnull(Max(SLTSQNUM),0) + 1 from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  insert SVC05210 with (rowlock) select  @RecType, @RMANumber, @Line, @Sequence,@LotSequence, @Qty-@ProcessQty, @Qty-@ProcessQty, 1, 0, '','', 0, @CMPNTSEQ, @QTYType update SVC05255 set SERLTQTY = @ProcessQty where RETDOCID = @RMANumber and Return_Record_Type = @RecType   and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and SLTSQNUM = @SerialSeq  insert into SVC05255 with (rowlock)  SELECT Return_Record_Type,  RETDOCID,  LNSEQNBR,  QTYTYPE,  @Qty-@ProcessQty,  Return_Item_Number,  Return_Serial_Number,  Return_Equipment_ID,  @LotSequence,  BIN,  RETCOST,  SVC_Original_Serial,  DATERECD,  DTSEQNUM,  TRXSORCE,  MARKED,  POSTED,  MFGDATE,  EXPNDATE,  CMPNTSEQ from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType   and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and SLTSQNUM = @SerialSeq   return     
GO
GRANT EXECUTE ON  [dbo].[svcRMASplitLotOnProcessLine] TO [DYNGRP]
GO
