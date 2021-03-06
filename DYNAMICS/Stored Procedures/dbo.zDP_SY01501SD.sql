SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01501SD] (@CMPANYID smallint, @ImageID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY01501 WHERE CMPANYID = @CMPANYID AND ImageID = @ImageID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY01501 WHERE CMPANYID = @CMPANYID AND ImageID = @ImageID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01501SD] TO [DYNGRP]
GO
