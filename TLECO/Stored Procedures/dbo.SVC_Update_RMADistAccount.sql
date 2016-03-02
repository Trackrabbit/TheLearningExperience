SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_RMADistAccount]  @RMANumber as char(15),  @RecordType as smallint,  @LineNumber as numeric(19,5),  @ProcessLine as numeric(19,5),   @LineType as char(3),  @DistType as smallint,  @AccountIndex integer,  @CMPNTSEQ int = 0 As update SVC05030 set ACTINDX = @AccountIndex  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ  and SVC_Process_SEQ_Number = @ProcessLine and LNSEQNBR = @LineNumber and SVC_Distribution_Type= @DistType and POSTED = 0  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_RMADistAccount] TO [DYNGRP]
GO
