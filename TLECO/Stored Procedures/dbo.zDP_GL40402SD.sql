SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40402SD] (@Reconciliation_Number int, @SQNCLINE numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .GL40402 WHERE Reconciliation_Number = @Reconciliation_Number AND SQNCLINE = @SQNCLINE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .GL40402 WHERE Reconciliation_Number = @Reconciliation_Number AND SQNCLINE = @SQNCLINE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40402SD] TO [DYNGRP]
GO
