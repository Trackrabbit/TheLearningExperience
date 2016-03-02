SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR00905SD] (@YEAR1 smallint, @EMPLOYID char(15), @BENEFIT char(7), @Effective_Date datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR00905 WHERE YEAR1 = @YEAR1 AND EMPLOYID = @EMPLOYID AND BENEFIT = @BENEFIT AND Effective_Date = @Effective_Date AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR00905 WHERE YEAR1 = @YEAR1 AND EMPLOYID = @EMPLOYID AND BENEFIT = @BENEFIT AND Effective_Date = @Effective_Date SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00905SD] TO [DYNGRP]
GO
