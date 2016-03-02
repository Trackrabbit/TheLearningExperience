SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40310SD] (@YEAR1 smallint, @DATE1 datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .WF40310 WHERE YEAR1 = @YEAR1 AND DATE1 = @DATE1 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WF40310 WHERE YEAR1 = @YEAR1 AND DATE1 = @DATE1 SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40310SD] TO [DYNGRP]
GO
