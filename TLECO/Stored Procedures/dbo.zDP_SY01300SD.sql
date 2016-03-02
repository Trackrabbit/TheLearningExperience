SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01300SD] (@Language_ID smallint, @PRODID smallint, @Process_ID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY01300 WHERE Language_ID = @Language_ID AND PRODID = @PRODID AND Process_ID = @Process_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY01300 WHERE Language_ID = @Language_ID AND PRODID = @PRODID AND Process_ID = @Process_ID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01300SD] TO [DYNGRP]
GO
