SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG70002SD] (@aaGLHdrID int, @aaGLDistID int, @aaGLAssignID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AAG70002 WHERE aaGLHdrID = @aaGLHdrID AND aaGLDistID = @aaGLDistID AND aaGLAssignID = @aaGLAssignID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AAG70002 WHERE aaGLHdrID = @aaGLHdrID AND aaGLDistID = @aaGLDistID AND aaGLAssignID = @aaGLAssignID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG70002SD] TO [DYNGRP]
GO
