SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20011SD] (@INTERID char(5), @aaSubLedgerHdrID int, @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AAG20011 WHERE INTERID = @INTERID AND aaSubLedgerHdrID = @aaSubLedgerHdrID AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AAG20011 WHERE INTERID = @INTERID AND aaSubLedgerHdrID = @aaSubLedgerHdrID AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20011SD] TO [DYNGRP]
GO
