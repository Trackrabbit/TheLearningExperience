SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20130SD] (@Extender_Window_ID char(15), @PRODID smallint, @Extender_SmartList_Num smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT20130 WHERE Extender_Window_ID = @Extender_Window_ID AND PRODID = @PRODID AND Extender_SmartList_Num = @Extender_SmartList_Num AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT20130 WHERE Extender_Window_ID = @Extender_Window_ID AND PRODID = @PRODID AND Extender_SmartList_Num = @Extender_SmartList_Num SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20130SD] TO [DYNGRP]
GO
