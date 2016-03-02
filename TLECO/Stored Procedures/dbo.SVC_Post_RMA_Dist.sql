SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Post_RMA_Dist]  @RMANumber as char(15),  @RecordType as smallint,  @LineNumber as numeric(19,5),  @ProcessLine as numeric(19,5),   @LineType as char(3),  @DistType as smallint,  @AccountIndex integer OUTPUT,  @CMPNTSEQ int = 0,  @Update tinyint = 1 As select @AccountIndex = ACTINDX from SVC05030  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ  and SVC_Process_SEQ_Number = @ProcessLine and LNSEQNBR = @LineNumber and SVC_Distribution_Type= @DistType and POSTED = 0  if @Update = 1  update SVC05030 set POSTED = 1, POSTEDDT = CONVERT(varchar(10),GETDATE(),102)  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ  and SVC_Process_SEQ_Number = @ProcessLine and LNSEQNBR = @LineNumber and SVC_Distribution_Type= @DistType and POSTED = 0  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Post_RMA_Dist] TO [DYNGRP]
GO
