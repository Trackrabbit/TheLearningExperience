SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA10200F_2] (@GROUPID_RS char(15), @CODEID_RS char(15), @TRXDATE_RS datetime, @ACTINDX_RS int, @SEQNUMBR_RS int, @DTASERIES_RS smallint, @DTAREF_RS char(25), @GROUPID_RE char(15), @CODEID_RE char(15), @TRXDATE_RE datetime, @ACTINDX_RE int, @SEQNUMBR_RE int, @DTASERIES_RE smallint, @DTAREF_RE char(25)) AS  set nocount on IF @GROUPID_RS IS NULL BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, CODEID, DOCNUMBR, RMDTYPAL, POSTDESC, DTAQNTY, CODEAMT, TRXDATE, DEX_ROW_ID FROM .DTA10200 ORDER BY GROUPID ASC, CODEID ASC, TRXDATE ASC, ACTINDX ASC, SEQNUMBR ASC, DTASERIES ASC, DTAREF ASC END ELSE IF @GROUPID_RS = @GROUPID_RE BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, CODEID, DOCNUMBR, RMDTYPAL, POSTDESC, DTAQNTY, CODEAMT, TRXDATE, DEX_ROW_ID FROM .DTA10200 WHERE GROUPID = @GROUPID_RS AND CODEID BETWEEN @CODEID_RS AND @CODEID_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DTASERIES BETWEEN @DTASERIES_RS AND @DTASERIES_RE AND DTAREF BETWEEN @DTAREF_RS AND @DTAREF_RE ORDER BY GROUPID ASC, CODEID ASC, TRXDATE ASC, ACTINDX ASC, SEQNUMBR ASC, DTASERIES ASC, DTAREF ASC END ELSE BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, CODEID, DOCNUMBR, RMDTYPAL, POSTDESC, DTAQNTY, CODEAMT, TRXDATE, DEX_ROW_ID FROM .DTA10200 WHERE GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND CODEID BETWEEN @CODEID_RS AND @CODEID_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DTASERIES BETWEEN @DTASERIES_RS AND @DTASERIES_RE AND DTAREF BETWEEN @DTAREF_RS AND @DTAREF_RE ORDER BY GROUPID ASC, CODEID ASC, TRXDATE ASC, ACTINDX ASC, SEQNUMBR ASC, DTASERIES ASC, DTAREF ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA10200F_2] TO [DYNGRP]
GO
