SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240448SS_1] (@Queue_ID smallint, @CHEKBKID char(15), @BACHNUMB char(15), @USERID char(15), @MESEQNUMBR int, @DOCNUMBR char(21), @MECHKID int, @SEQNUMBR int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Queue_ID, CHEKBKID, BACHNUMB, USERID, DOCNUMBR, MECHKID, SEQNUMBR, CRNCYSYM, MECURSYMBOLPLC, INCLSPAC, DECPLCUR, MEDECSYMBOL, METHOUSANDSYMBOL, MENEGSYMBOL, ME_NEGSYMBOLAMTPLC, ME_NegativeSymbolPlaceme, MESEQNUMBR, DEX_ROW_ID FROM .ME240448 WHERE Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND MESEQNUMBR = @MESEQNUMBR AND DOCNUMBR = @DOCNUMBR AND MECHKID = @MECHKID AND SEQNUMBR = @SEQNUMBR ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, MESEQNUMBR ASC, DOCNUMBR ASC, MECHKID ASC, SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240448SS_1] TO [DYNGRP]
GO
