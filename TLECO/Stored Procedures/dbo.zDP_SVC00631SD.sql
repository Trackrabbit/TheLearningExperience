SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00631SD] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @SVC_Invoice_SEQ_Number int, @SEQNUMBR int, @SVC_Distribution_Type smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC00631 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND SVC_Invoice_SEQ_Number = @SVC_Invoice_SEQ_Number AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC00631 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND SVC_Invoice_SEQ_Number = @SVC_Invoice_SEQ_Number AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00631SD] TO [DYNGRP]
GO
