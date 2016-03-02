SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA10100UN_5] (@BS int, @ACTINDX int, @PSTGSTUS smallint, @GROUPID char(15), @ACTINDX_RS int, @PSTGSTUS_RS smallint, @GROUPID_RS char(15), @ACTINDX_RE int, @PSTGSTUS_RE smallint, @GROUPID_RE char(15)) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, DTA_GL_Reference, DOCNUMBR, RMDTYPAL, GROUPAMT, JRNENTRY, TRXDATE, PSTGSTUS, DEX_ROW_ID FROM .DTA10100 WHERE ( ACTINDX = @ACTINDX AND PSTGSTUS = @PSTGSTUS AND GROUPID > @GROUPID OR ACTINDX = @ACTINDX AND PSTGSTUS > @PSTGSTUS OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, PSTGSTUS ASC, GROUPID ASC, DEX_ROW_ID ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, DTA_GL_Reference, DOCNUMBR, RMDTYPAL, GROUPAMT, JRNENTRY, TRXDATE, PSTGSTUS, DEX_ROW_ID FROM .DTA10100 WHERE ACTINDX = @ACTINDX_RS AND PSTGSTUS BETWEEN @PSTGSTUS_RS AND @PSTGSTUS_RE AND GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND ( ACTINDX = @ACTINDX AND PSTGSTUS = @PSTGSTUS AND GROUPID > @GROUPID OR ACTINDX = @ACTINDX AND PSTGSTUS > @PSTGSTUS OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, PSTGSTUS ASC, GROUPID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DTASERIES, DTAREF, ACTINDX, SEQNUMBR, GROUPID, DTA_GL_Reference, DOCNUMBR, RMDTYPAL, GROUPAMT, JRNENTRY, TRXDATE, PSTGSTUS, DEX_ROW_ID FROM .DTA10100 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PSTGSTUS BETWEEN @PSTGSTUS_RS AND @PSTGSTUS_RE AND GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND ( ACTINDX = @ACTINDX AND PSTGSTUS = @PSTGSTUS AND GROUPID > @GROUPID OR ACTINDX = @ACTINDX AND PSTGSTUS > @PSTGSTUS OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, PSTGSTUS ASC, GROUPID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA10100UN_5] TO [DYNGRP]
GO