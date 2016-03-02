SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10002SD] (@aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkAssignID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AAG10002 WHERE aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID = @aaGLWorkAssignID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AAG10002 WHERE aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID = @aaGLWorkAssignID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10002SD] TO [DYNGRP]
GO
