SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07220SD] (@ListDictID smallint, @ListID smallint, @ViewID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY07220 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY07220 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07220SD] TO [DYNGRP]
GO
