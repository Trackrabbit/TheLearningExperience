SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30600N_1] (@BS int, @VCHRNMBR char(21), @CNTRLTYP smallint, @APTVCHNM char(21), @SPCLDIST smallint, @DSTSQNUM int, @VCHRNMBR_RS char(21), @CNTRLTYP_RS smallint, @APTVCHNM_RS char(21), @SPCLDIST_RS smallint, @DSTSQNUM_RS int, @VCHRNMBR_RE char(21), @CNTRLTYP_RE smallint, @APTVCHNM_RE char(21), @SPCLDIST_RE smallint, @DSTSQNUM_RE int) AS  set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE ( VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM > @DSTSQNUM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST > @SPCLDIST OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM > @APTVCHNM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE VCHRNMBR = @VCHRNMBR_RS AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND SPCLDIST BETWEEN @SPCLDIST_RS AND @SPCLDIST_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM > @DSTSQNUM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST > @SPCLDIST OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM > @APTVCHNM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND SPCLDIST BETWEEN @SPCLDIST_RS AND @SPCLDIST_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM > @DSTSQNUM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST > @SPCLDIST OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM > @APTVCHNM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30600N_1] TO [DYNGRP]
GO