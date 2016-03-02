SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE988977SD] (@SEOPTNME char(21), @SE_Column_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SE988977 WHERE SEOPTNME = @SEOPTNME AND SE_Column_Number = @SE_Column_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SE988977 WHERE SEOPTNME = @SEOPTNME AND SE_Column_Number = @SE_Column_Number SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE988977SD] TO [DYNGRP]
GO
