SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT80200SD] (@USERID char(15), @CMPANYID smallint, @Extender_Type smallint, @Window_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT80200 WHERE USERID = @USERID AND CMPANYID = @CMPANYID AND Extender_Type = @Extender_Type AND Window_Number = @Window_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT80200 WHERE USERID = @USERID AND CMPANYID = @CMPANYID AND Extender_Type = @Extender_Type AND Window_Number = @Window_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT80200SD] TO [DYNGRP]
GO
