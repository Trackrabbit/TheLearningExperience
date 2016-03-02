SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASITAB30SD] (@Language_ID smallint, @STRTYPE smallint, @UNTRSVAL char(51), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ASITAB30 WHERE Language_ID = @Language_ID AND STRTYPE = @STRTYPE AND UNTRSVAL = @UNTRSVAL AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ASITAB30 WHERE Language_ID = @Language_ID AND STRTYPE = @STRTYPE AND UNTRSVAL = @UNTRSVAL SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASITAB30SD] TO [DYNGRP]
GO
