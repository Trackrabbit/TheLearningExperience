SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_RMA_Dist_Cost] (@RMANumber as char(15),  @RecordType as smallint,  @LineNumber as numeric(19,5),  @ProcessLine as numeric(19,5),   @LineType as char(3), @DistType as smallint,  @Price numeric (19,3),@OrigPrice numeric (19,3),  @Cost numeric (19,3),@OrigCost numeric (19,3),  @CMPNTSEQ int = 0)   AS  update SVC05030 set DEBITAMT = @Cost, ORDBTAMT = @OrigCost  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType  and LNSEQNBR = @LineNumber and SVC_Distribution_Type = 4 and POSTED = 0 and CMPNTSEQ = @CMPNTSEQ update SVC05030 set CRDTAMNT = @Cost, ORCRDAMT = @OrigCost  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType  and LNSEQNBR = @LineNumber and SVC_Distribution_Type = 5 and POSTED = 0 and CMPNTSEQ = @CMPNTSEQ update SVC05030 set DEBITAMT = @Price, ORDBTAMT = @OrigPrice  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType  and LNSEQNBR = @LineNumber and SVC_Distribution_Type = 1 and POSTED = 0 and CMPNTSEQ = @CMPNTSEQ update SVC05030 set CRDTAMNT = @Price, ORCRDAMT = @OrigPrice  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType  and LNSEQNBR = @LineNumber and SVC_Distribution_Type = 2 and POSTED = 0 and CMPNTSEQ = @CMPNTSEQ  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_RMA_Dist_Cost] TO [DYNGRP]
GO
