SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_W200006SD] (@RPTNGYR smallint, @CMPANYID smallint, @Employment_Code smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .W200006 WHERE RPTNGYR = @RPTNGYR AND CMPANYID = @CMPANYID AND Employment_Code = @Employment_Code AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .W200006 WHERE RPTNGYR = @RPTNGYR AND CMPANYID = @CMPANYID AND Employment_Code = @Employment_Code SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_W200006SD] TO [DYNGRP]
GO
