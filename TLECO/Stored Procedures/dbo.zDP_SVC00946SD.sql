SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00946SD] (@SVC_Tech_Inventory_ID char(11), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC00946 WHERE SVC_Tech_Inventory_ID = @SVC_Tech_Inventory_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC00946 WHERE SVC_Tech_Inventory_ID = @SVC_Tech_Inventory_ID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00946SD] TO [DYNGRP]
GO
