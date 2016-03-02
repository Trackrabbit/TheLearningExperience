SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30600F_8] (@TRXSORCE_RS char(13), @VCHRNMBR_RS char(21), @TRXSORCE_RE char(13), @VCHRNMBR_RE char(21)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE TRXSORCE = @TRXSORCE_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30600F_8] TO [DYNGRP]
GO
