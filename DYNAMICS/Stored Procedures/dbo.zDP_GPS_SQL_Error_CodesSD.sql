SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_GPS_SQL_Error_CodesSD] (@Language_ID smallint, @CODE int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .GPS_SQL_Error_Codes WHERE Language_ID = @Language_ID AND CODE = @CODE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .GPS_SQL_Error_Codes WHERE Language_ID = @Language_ID AND CODE = @CODE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GPS_SQL_Error_CodesSD] TO [DYNGRP]
GO
