SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80600L_4] (@TRXSORCE_RS char(13), @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @DSTSQNUM_RS int, @TRXSORCE_RE char(13), @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint, @DSTSQNUM_RE int) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 ORDER BY TRXSORCE DESC, VCHRNMBR DESC, DOCTYPE DESC, DSTSQNUM DESC, DEX_ROW_ID DESC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE TRXSORCE = @TRXSORCE_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY TRXSORCE DESC, VCHRNMBR DESC, DOCTYPE DESC, DSTSQNUM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY TRXSORCE DESC, VCHRNMBR DESC, DOCTYPE DESC, DSTSQNUM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80600L_4] TO [DYNGRP]
GO
