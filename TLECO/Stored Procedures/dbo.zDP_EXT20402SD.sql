SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20402SD] (@Extender_Event_ID int, @Action_Number smallint, @Condition_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT20402 WHERE Extender_Event_ID = @Extender_Event_ID AND Action_Number = @Action_Number AND Condition_Number = @Condition_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT20402 WHERE Extender_Event_ID = @Extender_Event_ID AND Action_Number = @Action_Number AND Condition_Number = @Condition_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20402SD] TO [DYNGRP]
GO