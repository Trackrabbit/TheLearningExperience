SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC10101SD] (@USERID char(15), @PSTGSTUS smallint, @RMDTYPAL smallint, @DOCNUMBR char(21), @SPCLDIST smallint, @APTODCTY smallint, @APTODCNM char(21), @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .MC10101 WHERE USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SPCLDIST = @SPCLDIST AND APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MC10101 WHERE USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SPCLDIST = @SPCLDIST AND APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC10101SD] TO [DYNGRP]
GO