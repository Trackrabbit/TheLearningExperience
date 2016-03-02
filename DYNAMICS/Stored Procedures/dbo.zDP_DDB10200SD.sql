SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10200SD] (@Drill_Down_ID char(15), @Action_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .DDB10200 WHERE Drill_Down_ID = @Drill_Down_ID AND Action_Number = @Action_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .DDB10200 WHERE Drill_Down_ID = @Drill_Down_ID AND Action_Number = @Action_Number SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10200SD] TO [DYNGRP]
GO
