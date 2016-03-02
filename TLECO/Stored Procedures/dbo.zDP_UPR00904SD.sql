SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00904SD] (@EMPLOYID char(15), @SEQNUMBR int, @Effective_Date datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR00904 WHERE EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND Effective_Date = @Effective_Date AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR00904 WHERE EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND Effective_Date = @Effective_Date SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00904SD] TO [DYNGRP]
GO
