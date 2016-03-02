SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240447SD] (@Queue_ID smallint, @CHEKBKID char(15), @BACHNUMB char(15), @USERID char(15), @MESEQNUMBR int, @DOCNUMBR char(21), @MECHKID int, @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ME240447 WHERE Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND MESEQNUMBR = @MESEQNUMBR AND DOCNUMBR = @DOCNUMBR AND MECHKID = @MECHKID AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME240447 WHERE Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND MESEQNUMBR = @MESEQNUMBR AND DOCNUMBR = @DOCNUMBR AND MECHKID = @MECHKID AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240447SD] TO [DYNGRP]
GO
