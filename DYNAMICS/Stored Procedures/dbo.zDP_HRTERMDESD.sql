SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRTERMDESD] (@DEFAULTNUMBER_I smallint, @TERMORDER_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HRTERMDE WHERE DEFAULTNUMBER_I = @DEFAULTNUMBER_I AND TERMORDER_I = @TERMORDER_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HRTERMDE WHERE DEFAULTNUMBER_I = @DEFAULTNUMBER_I AND TERMORDER_I = @TERMORDER_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTERMDESD] TO [DYNGRP]
GO
