SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRSAX032SD] (@TABLE_I smallint, @ROW_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HRSAX032 WHERE TABLE_I = @TABLE_I AND ROW_I = @ROW_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HRSAX032 WHERE TABLE_I = @TABLE_I AND ROW_I = @ROW_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRSAX032SD] TO [DYNGRP]
GO
