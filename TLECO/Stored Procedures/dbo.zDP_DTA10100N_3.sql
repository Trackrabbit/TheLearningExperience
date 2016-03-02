SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA10100N_3] (@BS int, @ACTINDX int, @DTASERIES smallint, @DTAREF char(25), @GROUPID char(15), @SEQNUMBR int, @ACTINDX_RS int, @DTASERIES_RS smallint, @DTAREF_RS char(25), @GROUPID_RS char(15), @SEQNUMBR_RS int, @ACTINDX_RE int, @DTASERIES_RE smallint, @DTAREF_RE char(25), @GROUPID_RE char(15), @SEQNUMBR_RE int) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, DTA_GL_Reference, DOCNUMBR, RMDTYPAL, GROUPAMT, JRNENTRY, TRXDATE, PSTGSTUS, DEX_ROW_ID FROM .DTA10100 WHERE ( ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND GROUPID = @GROUPID AND SEQNUMBR > @SEQNUMBR OR ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND GROUPID > @GROUPID OR ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF > @DTAREF OR ACTINDX = @ACTINDX AND DTASERIES > @DTASERIES OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DTASERIES ASC, DTAREF ASC, GROUPID ASC, SEQNUMBR ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, DTA_GL_Reference, DOCNUMBR, RMDTYPAL, GROUPAMT, JRNENTRY, TRXDATE, PSTGSTUS, DEX_ROW_ID FROM .DTA10100 WHERE ACTINDX = @ACTINDX_RS AND DTASERIES BETWEEN @DTASERIES_RS AND @DTASERIES_RE AND DTAREF BETWEEN @DTAREF_RS AND @DTAREF_RE AND GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND GROUPID = @GROUPID AND SEQNUMBR > @SEQNUMBR OR ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND GROUPID > @GROUPID OR ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF > @DTAREF OR ACTINDX = @ACTINDX AND DTASERIES > @DTASERIES OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DTASERIES ASC, DTAREF ASC, GROUPID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, DTA_GL_Reference, DOCNUMBR, RMDTYPAL, GROUPAMT, JRNENTRY, TRXDATE, PSTGSTUS, DEX_ROW_ID FROM .DTA10100 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND DTASERIES BETWEEN @DTASERIES_RS AND @DTASERIES_RE AND DTAREF BETWEEN @DTAREF_RS AND @DTAREF_RE AND GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND GROUPID = @GROUPID AND SEQNUMBR > @SEQNUMBR OR ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND GROUPID > @GROUPID OR ACTINDX = @ACTINDX AND DTASERIES = @DTASERIES AND DTAREF > @DTAREF OR ACTINDX = @ACTINDX AND DTASERIES > @DTASERIES OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DTASERIES ASC, DTAREF ASC, GROUPID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA10100N_3] TO [DYNGRP]
GO
