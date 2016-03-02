SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21010SD] (@Extender_Solution_ID int, @Extender_Type smallint, @Extender_ID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT21010 WHERE Extender_Solution_ID = @Extender_Solution_ID AND Extender_Type = @Extender_Type AND Extender_ID = @Extender_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT21010 WHERE Extender_Solution_ID = @Extender_Solution_ID AND Extender_Type = @Extender_Type AND Extender_ID = @Extender_ID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21010SD] TO [DYNGRP]
GO
