SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27608SD] (@ME_Cancel_Password char(11), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ME27608 WHERE ME_Cancel_Password = @ME_Cancel_Password AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME27608 WHERE ME_Cancel_Password = @ME_Cancel_Password SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27608SD] TO [DYNGRP]
GO
