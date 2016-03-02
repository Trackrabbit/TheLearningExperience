SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPBEN11SD] (@COPAYCODE_I char(15), @BENEFIT char(7), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HRPBEN11 WHERE COPAYCODE_I = @COPAYCODE_I AND BENEFIT = @BENEFIT AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HRPBEN11 WHERE COPAYCODE_I = @COPAYCODE_I AND BENEFIT = @BENEFIT SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPBEN11SD] TO [DYNGRP]
GO