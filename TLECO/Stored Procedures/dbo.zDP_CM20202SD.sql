SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20202SD] (@EFTType smallint, @SERIES smallint, @DOCNUMBR char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CM20202 WHERE EFTType = @EFTType AND SERIES = @SERIES AND DOCNUMBR = @DOCNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CM20202 WHERE EFTType = @EFTType AND SERIES = @SERIES AND DOCNUMBR = @DOCNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20202SD] TO [DYNGRP]
GO
