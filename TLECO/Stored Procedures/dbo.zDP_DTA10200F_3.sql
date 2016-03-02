SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA10200F_3] (@CODEID_RS char(15), @ACTINDX_RS int, @SEQNUMBR_RS int, @GROUPID_RS char(15), @DTASERIES_RS smallint, @DTAREF_RS char(25), @CODEID_RE char(15), @ACTINDX_RE int, @SEQNUMBR_RE int, @GROUPID_RE char(15), @DTASERIES_RE smallint, @DTAREF_RE char(25)) AS  set nocount on IF @CODEID_RS IS NULL BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, CODEID, DOCNUMBR, RMDTYPAL, POSTDESC, DTAQNTY, CODEAMT, TRXDATE, DEX_ROW_ID FROM .DTA10200 ORDER BY CODEID ASC, ACTINDX ASC, SEQNUMBR ASC, GROUPID ASC, DTASERIES ASC, DTAREF ASC END ELSE IF @CODEID_RS = @CODEID_RE BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, CODEID, DOCNUMBR, RMDTYPAL, POSTDESC, DTAQNTY, CODEAMT, TRXDATE, DEX_ROW_ID FROM .DTA10200 WHERE CODEID = @CODEID_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND DTASERIES BETWEEN @DTASERIES_RS AND @DTASERIES_RE AND DTAREF BETWEEN @DTAREF_RS AND @DTAREF_RE ORDER BY CODEID ASC, ACTINDX ASC, SEQNUMBR ASC, GROUPID ASC, DTASERIES ASC, DTAREF ASC END ELSE BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, CODEID, DOCNUMBR, RMDTYPAL, POSTDESC, DTAQNTY, CODEAMT, TRXDATE, DEX_ROW_ID FROM .DTA10200 WHERE CODEID BETWEEN @CODEID_RS AND @CODEID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND DTASERIES BETWEEN @DTASERIES_RS AND @DTASERIES_RE AND DTAREF BETWEEN @DTAREF_RS AND @DTAREF_RE ORDER BY CODEID ASC, ACTINDX ASC, SEQNUMBR ASC, GROUPID ASC, DTASERIES ASC, DTAREF ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA10200F_3] TO [DYNGRP]
GO
