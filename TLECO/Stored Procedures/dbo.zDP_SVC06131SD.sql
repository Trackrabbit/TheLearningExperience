SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06131SD] (@WORECTYPE smallint, @WORKORDNUM char(11), @LINITMTYP char(3), @LNITMSEQ int, @CMPNTSEQ int, @SEQNUMBR int, @SVC_Distribution_Type smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC06131 WHERE WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC06131 WHERE WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06131SD] TO [DYNGRP]
GO
