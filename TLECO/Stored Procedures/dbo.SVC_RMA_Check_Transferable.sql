SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RMA_Check_Transferable]  (  @RecType smallint, @RMANumber char(15),  @Line Numeric(19,5), @Transferable smallint output , @CMPNTSEQ int = 0 ) as declare @item char(31)  select @Transferable = 0 if exists(select * from SVC05200 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and svcRMAComponentSeq = @CMPNTSEQ and Received = 0)  select @Transferable = 1  if exists(select * from SVC05200 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and svcRMAComponentSeq = @CMPNTSEQ and RMA_Status = 10)  select @Transferable = 2  if exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and SVC_Process_Type = 3)  select @Transferable = 3  if exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and Return_Disposition_Statu = 1)  select @Transferable = 4  if exists(select * from SVC05200 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and svcRMAComponentSeq = @CMPNTSEQ and STATUS = 9)  select @Transferable = 5  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Check_Transferable] TO [DYNGRP]
GO
