SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9200SD] (@SmartList_Number smallint, @SmartList_Name char(65), @SmartList_Item_Name char(65), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .SC9200 WHERE SmartList_Number = @SmartList_Number AND SmartList_Name = @SmartList_Name AND SmartList_Item_Name = @SmartList_Item_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SC9200 WHERE SmartList_Number = @SmartList_Number AND SmartList_Name = @SmartList_Name AND SmartList_Item_Name = @SmartList_Item_Name SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9200SD] TO [DYNGRP]
GO