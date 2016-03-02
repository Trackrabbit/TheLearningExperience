SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB80300SD] (@SERVERID char(81), @SQL_Database_Name char(81), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .SLB80300 WHERE SERVERID = @SERVERID AND SQL_Database_Name = @SQL_Database_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SLB80300 WHERE SERVERID = @SERVERID AND SQL_Database_Name = @SQL_Database_Name SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB80300SD] TO [DYNGRP]
GO
