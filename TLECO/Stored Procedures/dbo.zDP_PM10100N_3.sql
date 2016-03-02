SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10100N_3] (@BS int, @USERID char(15), @PSTGSTUS smallint, @VCHRNMBR char(21), @CNTRLTYP smallint, @DSTINDX int, @DISTTYPE smallint, @DEX_ROW_ID int, @USERID_RS char(15), @PSTGSTUS_RS smallint, @VCHRNMBR_RS char(21), @CNTRLTYP_RS smallint, @DSTINDX_RS int, @DISTTYPE_RS smallint, @USERID_RE char(15), @PSTGSTUS_RE smallint, @VCHRNMBR_RE char(21), @CNTRLTYP_RE smallint, @DSTINDX_RE int, @DISTTYPE_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .PM10100 WHERE ( USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX = @DSTINDX AND DISTTYPE = @DISTTYPE AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX = @DSTINDX AND DISTTYPE > @DISTTYPE OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX > @DSTINDX OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR > @VCHRNMBR OR USERID = @USERID AND PSTGSTUS > @PSTGSTUS OR USERID > @USERID ) ORDER BY USERID ASC, PSTGSTUS ASC, VCHRNMBR ASC, CNTRLTYP ASC, DSTINDX ASC, DISTTYPE ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .PM10100 WHERE USERID = @USERID_RS AND PSTGSTUS BETWEEN @PSTGSTUS_RS AND @PSTGSTUS_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND DSTINDX BETWEEN @DSTINDX_RS AND @DSTINDX_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ( USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX = @DSTINDX AND DISTTYPE = @DISTTYPE AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX = @DSTINDX AND DISTTYPE > @DISTTYPE OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX > @DSTINDX OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR > @VCHRNMBR OR USERID = @USERID AND PSTGSTUS > @PSTGSTUS OR USERID > @USERID ) ORDER BY USERID ASC, PSTGSTUS ASC, VCHRNMBR ASC, CNTRLTYP ASC, DSTINDX ASC, DISTTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .PM10100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PSTGSTUS BETWEEN @PSTGSTUS_RS AND @PSTGSTUS_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND DSTINDX BETWEEN @DSTINDX_RS AND @DSTINDX_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ( USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX = @DSTINDX AND DISTTYPE = @DISTTYPE AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX = @DSTINDX AND DISTTYPE > @DISTTYPE OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DSTINDX > @DSTINDX OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND VCHRNMBR > @VCHRNMBR OR USERID = @USERID AND PSTGSTUS > @PSTGSTUS OR USERID > @USERID ) ORDER BY USERID ASC, PSTGSTUS ASC, VCHRNMBR ASC, CNTRLTYP ASC, DSTINDX ASC, DISTTYPE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10100N_3] TO [DYNGRP]
GO
