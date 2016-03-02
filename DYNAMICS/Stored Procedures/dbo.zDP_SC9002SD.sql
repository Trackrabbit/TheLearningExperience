SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9002SD] (@PRODID smallint, @Resource_Type smallint, @Series_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .SC9002 WHERE PRODID = @PRODID AND Resource_Type = @Resource_Type AND Series_Number = @Series_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SC9002 WHERE PRODID = @PRODID AND Resource_Type = @Resource_Type AND Series_Number = @Series_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9002SD] TO [DYNGRP]
GO
