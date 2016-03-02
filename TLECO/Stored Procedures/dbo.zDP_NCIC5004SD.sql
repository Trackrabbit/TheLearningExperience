SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5004SD] (@Xfr_Record_Number numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .NCIC5004 WHERE Xfr_Record_Number = @Xfr_Record_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NCIC5004 WHERE Xfr_Record_Number = @Xfr_Record_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5004SD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5004SD] TO [public]
GO
