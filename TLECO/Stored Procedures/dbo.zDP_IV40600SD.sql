SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40600SD] (@USCATNUM smallint, @USCATVAL char(11), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV40600 WHERE USCATNUM = @USCATNUM AND USCATVAL = @USCATVAL AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV40600 WHERE USCATNUM = @USCATNUM AND USCATVAL = @USCATVAL SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40600SD] TO [DYNGRP]
GO