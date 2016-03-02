SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10100N_5] (@BS int, @VCHRNMBR char(21), @DEX_ROW_ID int, @VCHRNMBR_RS char(21), @VCHRNMBR_RE char(21)) AS  set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .PM10100 WHERE ( VCHRNMBR = @VCHRNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, DEX_ROW_ID ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .PM10100 WHERE VCHRNMBR = @VCHRNMBR_RS AND ( VCHRNMBR = @VCHRNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .PM10100 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND ( VCHRNMBR = @VCHRNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10100N_5] TO [DYNGRP]
GO
