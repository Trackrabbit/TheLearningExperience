SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10308SD] (@MLCHKTYP smallint, @PYADNMBR int, @MLTRXNBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR10308 WHERE MLCHKTYP = @MLCHKTYP AND PYADNMBR = @PYADNMBR AND MLTRXNBR = @MLTRXNBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR10308 WHERE MLCHKTYP = @MLCHKTYP AND PYADNMBR = @PYADNMBR AND MLTRXNBR = @MLTRXNBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10308SD] TO [DYNGRP]
GO
