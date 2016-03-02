SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42106SD] (@Pay_Schedule char(15), @EMPLOYID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR42106 WHERE Pay_Schedule = @Pay_Schedule AND EMPLOYID = @EMPLOYID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR42106 WHERE Pay_Schedule = @Pay_Schedule AND EMPLOYID = @EMPLOYID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42106SD] TO [DYNGRP]
GO
