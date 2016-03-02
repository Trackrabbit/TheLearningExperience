SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2NOT01SD] (@NOTESINDEX_I numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HR2NOT01 WHERE NOTESINDEX_I = @NOTESINDEX_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HR2NOT01 WHERE NOTESINDEX_I = @NOTESINDEX_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2NOT01SD] TO [DYNGRP]
GO
