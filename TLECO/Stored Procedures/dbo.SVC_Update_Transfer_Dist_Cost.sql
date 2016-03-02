SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_Transfer_Dist_Cost]  @DocID varchar(15) ,  @Line integer,  @Amount numeric (19,2),  @OrigAmount numeric (19,2),  @Qty numeric(19,2),  @Posted tinyint  AS declare @SEQNUMBR integer  select @SEQNUMBR = MAX(SEQNUMBR)  from SVC00731 where ORDDOCID = @DocID and LNITMSEQ = @Line  and SVC_Distribution_Type=4 and POSTED = @Posted if @Qty <> 0 begin  select @Amount = @Amount * @Qty, @OrigAmount = @OrigAmount * @Qty  end update SVC00731 set CRDTAMNT = round(@Amount,2), ORCRDAMT = round(@OrigAmount,2)  where ORDDOCID = @DocID and LNITMSEQ = @Line  and SEQNUMBR = @SEQNUMBR and SVC_Distribution_Type = 4 and POSTED = @Posted update SVC00731 set DEBITAMT = round(@Amount,2), ORDBTAMT = round(@OrigAmount,2)  where ORDDOCID = @DocID and LNITMSEQ = @Line  and SEQNUMBR = @SEQNUMBR and SVC_Distribution_Type = 5 and POSTED = @Posted  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Transfer_Dist_Cost] TO [DYNGRP]
GO
