SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90102SD] (@PRODID smallint, @Resource_Type smallint, @Series_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT90102 WHERE PRODID = @PRODID AND Resource_Type = @Resource_Type AND Series_Number = @Series_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT90102 WHERE PRODID = @PRODID AND Resource_Type = @Resource_Type AND Series_Number = @Series_Number SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90102SD] TO [DYNGRP]
GO
