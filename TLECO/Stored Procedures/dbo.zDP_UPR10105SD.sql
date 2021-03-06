SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10105SD] (@RPTNGYR smallint, @EMPLOYID char(15), @SEQNUMBR int, @STATECD char(3), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR10105 WHERE RPTNGYR = @RPTNGYR AND EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND STATECD = @STATECD AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR10105 WHERE RPTNGYR = @RPTNGYR AND EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND STATECD = @STATECD SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10105SD] TO [DYNGRP]
GO
