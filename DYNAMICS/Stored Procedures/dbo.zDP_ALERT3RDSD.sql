SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ALERT3RDSD] (@Language_ID smallint, @ERMSGNUM int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .ALERT3RD WHERE Language_ID = @Language_ID AND ERMSGNUM = @ERMSGNUM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ALERT3RD WHERE Language_ID = @Language_ID AND ERMSGNUM = @ERMSGNUM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ALERT3RDSD] TO [DYNGRP]
GO
