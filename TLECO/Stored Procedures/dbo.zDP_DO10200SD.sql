SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO10200SD] (@RMDTYPAL smallint, @DOCNUMBR char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .DO10200 WHERE RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .DO10200 WHERE RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO10200SD] TO [DYNGRP]
GO
