SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB20000SD] (@SmartList_ID char(15), @SmartList_Change_Type smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .SLB20000 WHERE SmartList_ID = @SmartList_ID AND SmartList_Change_Type = @SmartList_Change_Type AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SLB20000 WHERE SmartList_ID = @SmartList_ID AND SmartList_Change_Type = @SmartList_Change_Type SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB20000SD] TO [DYNGRP]
GO
