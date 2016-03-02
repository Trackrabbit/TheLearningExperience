SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Delete_RMA_Dist] (@RMANumber as char(15),  @RecordType as smallint,  @LineNumber as numeric(19,5),  @ProcessLine as numeric(19,5),   @LineType as char(3), @DistType as smallint,  @CMPNTSEQ int = 0)  AS  if @DistType = 0  delete from SVC05030  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType  and CMPNTSEQ = @CMPNTSEQ and LNSEQNBR = @LineNumber and POSTED = 0  else  delete from SVC05030  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType  and LNSEQNBR = @LineNumber and POSTED = 0 and SVC_Process_SEQ_Number = @ProcessLine  and CMPNTSEQ = @CMPNTSEQ and SVC_Distribution_Type= @DistType  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_RMA_Dist] TO [DYNGRP]
GO
