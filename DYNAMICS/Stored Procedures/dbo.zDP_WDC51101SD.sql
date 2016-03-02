SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51101SD] (@WDC_Entity_ID int, @Node_Image smallint, @Node_Data int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .WDC51101 WHERE WDC_Entity_ID = @WDC_Entity_ID AND Node_Image = @Node_Image AND Node_Data = @Node_Data AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WDC51101 WHERE WDC_Entity_ID = @WDC_Entity_ID AND Node_Image = @Node_Image AND Node_Data = @Node_Data SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51101SD] TO [DYNGRP]
GO
