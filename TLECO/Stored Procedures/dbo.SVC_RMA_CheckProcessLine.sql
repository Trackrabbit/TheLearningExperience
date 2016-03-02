SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_RMA_CheckProcessLine] (  @RMA char(15),  @LineNumber numeric(19,5),  @ProcessType smallint,  @LineCount int output,  @CMPNTSEQ int = 0 ) as if @ProcessType = 0   select @LineCount = count(*) from SVC05210 where RETDOCID = @RMA and LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ else  select @LineCount = count(*) from SVC05210 where RETDOCID = @RMA and LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ  and SVC_Process_Type = @ProcessType  select @LineCount = isnull(@LineCount,0) return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_CheckProcessLine] TO [DYNGRP]
GO
