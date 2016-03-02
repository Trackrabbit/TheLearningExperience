SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA10100SS_4] (@DTASERIES smallint, @DTA_GL_Reference char(25), @ACTINDX int, @DTAREF char(25), @SEQNUMBR int, @GROUPID char(15)) AS  set nocount on SELECT TOP 1  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, DTA_GL_Reference, DOCNUMBR, RMDTYPAL, GROUPAMT, JRNENTRY, TRXDATE, PSTGSTUS, DEX_ROW_ID FROM .DTA10100 WHERE DTASERIES = @DTASERIES AND DTA_GL_Reference = @DTA_GL_Reference AND ACTINDX = @ACTINDX AND DTAREF = @DTAREF AND SEQNUMBR = @SEQNUMBR AND GROUPID = @GROUPID ORDER BY DTASERIES ASC, DTA_GL_Reference ASC, ACTINDX ASC, DTAREF ASC, SEQNUMBR ASC, GROUPID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA10100SS_4] TO [DYNGRP]
GO