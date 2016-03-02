SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RTV_Set_RMAProcessType] ( @RecType smallint,  @RMANumber char(15),  @Line Numeric(19,5), @SerialSeq int,  @ProcessType smallint, @CMPNTSEQ int = 0, @QtyType smallint = 1 )  as  if @RecType = 2 return   if exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line  and CMPNTSEQ = @CMPNTSEQ and SVC_Process_QTY > 0 and SVC_Process_Type <>2 and Return_Disposition_Statu = 0 and QTYTYPE = @QtyType)  update SVC05210 with (rowlock) set SVC_Process_Type = @ProcessType  where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  and SVC_Process_QTY > 0 and SVC_Process_Type <> 2 and Return_Disposition_Statu = 0 and QTYTYPE = @QtyType  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Set_RMAProcessType] TO [DYNGRP]
GO
