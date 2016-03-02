SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10600L_3] (@USERID_RS char(15), @PSTGSTUS_RS smallint, @VCHRNMBR_RS char(21), @CNTRLTYP_RS smallint, @DSTINDX_RS int, @DISTTYPE_RS smallint, @USERID_RE char(15), @PSTGSTUS_RE smallint, @VCHRNMBR_RE char(21), @CNTRLTYP_RE smallint, @DSTINDX_RE int, @DISTTYPE_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DEX_ROW_ID FROM .PM10600 ORDER BY USERID DESC, PSTGSTUS DESC, VCHRNMBR DESC, CNTRLTYP DESC, DSTINDX DESC, DISTTYPE DESC, DEX_ROW_ID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DEX_ROW_ID FROM .PM10600 WHERE USERID = @USERID_RS AND PSTGSTUS BETWEEN @PSTGSTUS_RS AND @PSTGSTUS_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND DSTINDX BETWEEN @DSTINDX_RS AND @DSTINDX_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE ORDER BY USERID DESC, PSTGSTUS DESC, VCHRNMBR DESC, CNTRLTYP DESC, DSTINDX DESC, DISTTYPE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DEX_ROW_ID FROM .PM10600 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PSTGSTUS BETWEEN @PSTGSTUS_RS AND @PSTGSTUS_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND DSTINDX BETWEEN @DSTINDX_RS AND @DSTINDX_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE ORDER BY USERID DESC, PSTGSTUS DESC, VCHRNMBR DESC, CNTRLTYP DESC, DSTINDX DESC, DISTTYPE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10600L_3] TO [DYNGRP]
GO