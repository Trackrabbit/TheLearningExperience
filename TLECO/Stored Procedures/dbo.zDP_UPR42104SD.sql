SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42104SD] (@Pay_Schedule char(15), @JOBTITLE char(7), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR42104 WHERE Pay_Schedule = @Pay_Schedule AND JOBTITLE = @JOBTITLE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR42104 WHERE Pay_Schedule = @Pay_Schedule AND JOBTITLE = @JOBTITLE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42104SD] TO [DYNGRP]
GO
