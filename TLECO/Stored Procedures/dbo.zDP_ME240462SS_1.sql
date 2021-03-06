SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240462SS_1] (@Queue_ID smallint, @CHEKBKID char(15), @BACHNUMB char(15), @USERID char(15), @MESEQNUMBR int, @SEQNUMBR int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Queue_ID, CHEKBKID, BACHNUMB, USERID, SEQNUMBR, Category_Name, MEFIELDNAME, Field_Value, DATE1, MESEQNUMBR, DEX_ROW_ID FROM .ME240462 WHERE Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND MESEQNUMBR = @MESEQNUMBR AND SEQNUMBR = @SEQNUMBR ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, MESEQNUMBR ASC, SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240462SS_1] TO [DYNGRP]
GO
