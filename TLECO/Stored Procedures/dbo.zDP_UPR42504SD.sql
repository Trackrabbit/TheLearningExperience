SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42504SD] (@Batch_Prefix char(15), @EMPLCLAS char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR42504 WHERE Batch_Prefix = @Batch_Prefix AND EMPLCLAS = @EMPLCLAS AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR42504 WHERE Batch_Prefix = @Batch_Prefix AND EMPLCLAS = @EMPLCLAS SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42504SD] TO [DYNGRP]
GO
