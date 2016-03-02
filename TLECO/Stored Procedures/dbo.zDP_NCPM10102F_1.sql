SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCPM10102F_1] (@VCHRNMBR_RS char(21), @CNTRLTYP_RS smallint, @APTVCHNM_RS char(21), @SPCLDIST_RS smallint, @DSTSQNUM_RS int, @VCHRNMBR_RE char(21), @CNTRLTYP_RE smallint, @APTVCHNM_RE char(21), @SPCLDIST_RE smallint, @DSTSQNUM_RE int) AS /* 14.00.0084.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 WHERE VCHRNMBR = @VCHRNMBR_RS AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND SPCLDIST BETWEEN @SPCLDIST_RS AND @SPCLDIST_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND SPCLDIST BETWEEN @SPCLDIST_RS AND @SPCLDIST_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102F_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102F_1] TO [public]
GO