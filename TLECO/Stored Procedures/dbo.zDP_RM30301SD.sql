SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30301SD] (@RMDTYPAL smallint, @DOCNUMBR char(21), @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .RM30301 WHERE RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .RM30301 WHERE RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30301SD] TO [DYNGRP]
GO
