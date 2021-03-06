SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00303SD] (@aaDistrQueryID int, @aaColumn smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AAG00303 WHERE aaDistrQueryID = @aaDistrQueryID AND aaColumn = @aaColumn AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AAG00303 WHERE aaDistrQueryID = @aaDistrQueryID AND aaColumn = @aaColumn SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00303SD] TO [DYNGRP]
GO
