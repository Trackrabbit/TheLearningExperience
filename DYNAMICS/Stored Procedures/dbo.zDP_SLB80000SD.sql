SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB80000SD] (@RCRDTYPE smallint, @USERID char(15), @Security_Role smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .SLB80000 WHERE RCRDTYPE = @RCRDTYPE AND USERID = @USERID AND Security_Role = @Security_Role AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SLB80000 WHERE RCRDTYPE = @RCRDTYPE AND USERID = @USERID AND Security_Role = @Security_Role SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB80000SD] TO [DYNGRP]
GO
