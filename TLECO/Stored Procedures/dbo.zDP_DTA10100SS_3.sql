SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA10100SS_3] (@ACTINDX int, @DTASERIES smallint, @DTAREF char(25), @GROUPID char(15), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, DTA_GL_Reference, DOCNUMBR, RMDTYPAL, GROUPAMT, JRNENTRY, TRXDATE, PSTGSTUS, DEX_ROW_ID FROM .DTA10100 WHERE ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND GROUPID = @GROUPID AND SEQNUMBR = @SEQNUMBR ORDER BY ACTINDX ASC, DTASERIES ASC, DTAREF ASC, GROUPID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA10100SS_3] TO [DYNGRP]
GO
