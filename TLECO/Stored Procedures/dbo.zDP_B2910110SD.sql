SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910110SD] (@USERID char(15), @SCHEDULE_NUMBER char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B2910110 WHERE USERID = @USERID AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B2910110 WHERE USERID = @USERID AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910110SD] TO [DYNGRP]
GO
