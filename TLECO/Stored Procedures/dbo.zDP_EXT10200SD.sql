SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT10200SD] (@Lookup_Number int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT10200 WHERE Lookup_Number = @Lookup_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT10200 WHERE Lookup_Number = @Lookup_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT10200SD] TO [DYNGRP]
GO
