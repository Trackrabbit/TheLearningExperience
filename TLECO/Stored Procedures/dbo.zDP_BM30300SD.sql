SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM30300SD] (@TRX_ID char(19), @Component_ID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .BM30300 WHERE TRX_ID = @TRX_ID AND Component_ID = @Component_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .BM30300 WHERE TRX_ID = @TRX_ID AND Component_ID = @Component_ID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM30300SD] TO [DYNGRP]
GO
