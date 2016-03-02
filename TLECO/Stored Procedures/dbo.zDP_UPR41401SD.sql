SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41401SD] (@LOCALTAX char(7), @TXTBLSEQ smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR41401 WHERE LOCALTAX = @LOCALTAX AND TXTBLSEQ = @TXTBLSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR41401 WHERE LOCALTAX = @LOCALTAX AND TXTBLSEQ = @TXTBLSEQ SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41401SD] TO [DYNGRP]
GO