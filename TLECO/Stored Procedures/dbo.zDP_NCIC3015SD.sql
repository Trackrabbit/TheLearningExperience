SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3015SD] (@USERID char(15), @SQNCLINE numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .NCIC3015 WHERE USERID = @USERID AND SQNCLINE = @SQNCLINE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NCIC3015 WHERE USERID = @USERID AND SQNCLINE = @SQNCLINE SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3015SD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3015SD] TO [public]
GO
