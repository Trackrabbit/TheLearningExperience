SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCPM10102F_2] (@VCHRNMBR_RS char(21), @CNTRLTYP_RS smallint, @APTVCHNM_RS char(21), @DISTTYPE_RS smallint, @DSTINDX_RS int, @VCHRNMBR_RE char(21), @CNTRLTYP_RE smallint, @APTVCHNM_RE char(21), @DISTTYPE_RE smallint, @DSTINDX_RE int) AS /* 14.00.0084.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, DISTTYPE ASC, DSTINDX ASC, DEX_ROW_ID ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 WHERE VCHRNMBR = @VCHRNMBR_RS AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND DSTINDX BETWEEN @DSTINDX_RS AND @DSTINDX_RE ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, DISTTYPE ASC, DSTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND DSTINDX BETWEEN @DSTINDX_RS AND @DSTINDX_RE ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, DISTTYPE ASC, DSTINDX ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102F_2] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102F_2] TO [public]
GO
