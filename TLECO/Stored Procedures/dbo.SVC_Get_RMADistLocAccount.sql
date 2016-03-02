SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_RMADistLocAccount]  @RMANumber as char(15),  @RecordType as smallint,  @LineNumber as numeric(19,5),  @ProcessLine as numeric(19,5),   @LineType as char(3),  @DistType as smallint,  @AccountIndex integer OUTPUT,  @Location char(10) OUTPUT,  @CMPNTSEQ int = 0 As select @AccountIndex = ACTINDX from SVC05030  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ  and SVC_Process_SEQ_Number = @ProcessLine and LNSEQNBR = @LineNumber and SVC_Distribution_Type= @DistType and POSTED = 0 select @Location = Return_Location_Code from SVC05200   where RETDOCID = @RMANumber and Return_Record_Type = @RecordType and LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ if @Location = '' or @Location is null  select @Location = LOCNCODE from SVC05200  where RETDOCID = @RMANumber and Return_Record_Type = @RecordType and LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ  select @AccountIndex = isnull(@AccountIndex,0) select @Location = isnull(@Location,'')  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_RMADistLocAccount] TO [DYNGRP]
GO
