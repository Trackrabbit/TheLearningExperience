SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00199SD] (@DATE1 datetime, @TIME1 datetime, @LOGINDEX int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .FA00199 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND LOGINDEX = @LOGINDEX AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .FA00199 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND LOGINDEX = @LOGINDEX SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00199SD] TO [DYNGRP]
GO
