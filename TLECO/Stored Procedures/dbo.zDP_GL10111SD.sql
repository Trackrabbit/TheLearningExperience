SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL10111SD] (@ACTINDX int, @YEAR1 smallint, @PERIODID smallint, @Ledger_ID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .GL10111 WHERE ACTINDX = @ACTINDX AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID = @Ledger_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .GL10111 WHERE ACTINDX = @ACTINDX AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID = @Ledger_ID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10111SD] TO [DYNGRP]
GO
