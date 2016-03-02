SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40307SD] (@PLANCODE char(15), @JOBTITLE char(7), @SEQNUMBR int, @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PC40307 WHERE PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEQNUMBR = @SEQNUMBR AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PC40307 WHERE PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEQNUMBR = @SEQNUMBR AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40307SD] TO [DYNGRP]
GO
