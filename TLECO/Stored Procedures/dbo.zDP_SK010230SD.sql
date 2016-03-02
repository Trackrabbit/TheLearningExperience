SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK010230SD] (@EMPID_I char(15), @SKILLNUMBER_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SK010230 WHERE EMPID_I = @EMPID_I AND SKILLNUMBER_I = @SKILLNUMBER_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SK010230 WHERE EMPID_I = @EMPID_I AND SKILLNUMBER_I = @SKILLNUMBER_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK010230SD] TO [DYNGRP]
GO
