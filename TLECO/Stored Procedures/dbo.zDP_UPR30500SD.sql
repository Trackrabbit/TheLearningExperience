SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30500SD] (@EMPLOYID char(15), @Pay_Schedule char(15), @YEAR1 smallint, @PERIODID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR30500 WHERE EMPLOYID = @EMPLOYID AND Pay_Schedule = @Pay_Schedule AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR30500 WHERE EMPLOYID = @EMPLOYID AND Pay_Schedule = @Pay_Schedule AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30500SD] TO [DYNGRP]
GO
