SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06021SD] (@WOTYPE char(11), @SQNCLINE numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC06021 WHERE WOTYPE = @WOTYPE AND SQNCLINE = @SQNCLINE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC06021 WHERE WOTYPE = @WOTYPE AND SQNCLINE = @SQNCLINE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06021SD] TO [DYNGRP]
GO
