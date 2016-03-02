SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC2000SS_1] (@DTASERIES smallint, @DTAREF char(25), @ACTINDX int, @GROUPID char(15), @CODEID char(15), @SEQNUMBR int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, CODEID, DOCNUMBR, CMPANYID, RMDTYPAL, POSTDESC, DTAQNTY, CODEAMT, TRXDATE, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, DEX_ROW_ID FROM .NCIC2000 WHERE DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND ACTINDX = @ACTINDX AND GROUPID = @GROUPID AND CODEID = @CODEID AND SEQNUMBR = @SEQNUMBR ORDER BY DTASERIES ASC, DTAREF ASC, ACTINDX ASC, GROUPID ASC, CODEID ASC, SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC2000SS_1] TO [DYNGRP]
GO
