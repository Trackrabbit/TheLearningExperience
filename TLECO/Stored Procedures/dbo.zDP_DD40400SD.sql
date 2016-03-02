SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD40400SD] (@CMPANYID smallint, @DDDESC10 char(11), @INDXLONG int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .DD40400 WHERE CMPANYID = @CMPANYID AND DDDESC10 = @DDDESC10 AND INDXLONG = @INDXLONG AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .DD40400 WHERE CMPANYID = @CMPANYID AND DDDESC10 = @DDDESC10 AND INDXLONG = @INDXLONG SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD40400SD] TO [DYNGRP]
GO
