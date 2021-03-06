SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602220SD] (@DOCNUMBR char(21), @RMDTYPAL smallint, @APFRDCNM char(21), @APFRDCTY smallint, @BSSI_Consecutive_Num int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4602220 WHERE DOCNUMBR = @DOCNUMBR AND RMDTYPAL = @RMDTYPAL AND APFRDCNM = @APFRDCNM AND APFRDCTY = @APFRDCTY AND BSSI_Consecutive_Num = @BSSI_Consecutive_Num AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4602220 WHERE DOCNUMBR = @DOCNUMBR AND RMDTYPAL = @RMDTYPAL AND APFRDCNM = @APFRDCNM AND APFRDCTY = @APFRDCTY AND BSSI_Consecutive_Num = @BSSI_Consecutive_Num SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602220SD] TO [DYNGRP]
GO
