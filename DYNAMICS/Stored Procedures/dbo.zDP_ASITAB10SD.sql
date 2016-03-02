SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASITAB10SD] (@ASI_Table_Number_Dict_ID smallint, @ASI_Table_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ASITAB10 WHERE ASI_Table_Number_Dict_ID = @ASI_Table_Number_Dict_ID AND ASI_Table_Number = @ASI_Table_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ASITAB10 WHERE ASI_Table_Number_Dict_ID = @ASI_Table_Number_Dict_ID AND ASI_Table_Number = @ASI_Table_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASITAB10SD] TO [DYNGRP]
GO
