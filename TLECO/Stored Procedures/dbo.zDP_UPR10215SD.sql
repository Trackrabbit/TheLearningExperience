SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10215SD] (@USERID char(15), @PYRNTYPE smallint, @EMPLOYID char(15), @PYADNMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR10215 WHERE USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID = @EMPLOYID AND PYADNMBR = @PYADNMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR10215 WHERE USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID = @EMPLOYID AND PYADNMBR = @PYADNMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10215SD] TO [DYNGRP]
GO
