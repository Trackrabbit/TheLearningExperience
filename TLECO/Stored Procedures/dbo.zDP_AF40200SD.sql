SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40200SD] (@REPORTID smallint, @RptOptID numeric(19,5), @ROWNMBR smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AF40200 WHERE REPORTID = @REPORTID AND RptOptID = @RptOptID AND ROWNMBR = @ROWNMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AF40200 WHERE REPORTID = @REPORTID AND RptOptID = @RptOptID AND ROWNMBR = @ROWNMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40200SD] TO [DYNGRP]
GO