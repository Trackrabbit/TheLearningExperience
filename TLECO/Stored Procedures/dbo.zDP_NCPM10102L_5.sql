SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCPM10102L_5] (@BACHNUMB_RS char(15), @VCHRNMBR_RS char(21), @BACHNUMB_RE char(15), @VCHRNMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 ORDER BY BACHNUMB DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 WHERE BACHNUMB = @BACHNUMB_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY BACHNUMB DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY BACHNUMB DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102L_5] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102L_5] TO [public]
GO