SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30600N_6] (@BS int, @PSTGDATE datetime, @DEX_ROW_ID int, @PSTGDATE_RS datetime, @PSTGDATE_RE datetime) AS  set nocount on IF @PSTGDATE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE ( PSTGDATE = @PSTGDATE AND DEX_ROW_ID > @DEX_ROW_ID OR PSTGDATE > @PSTGDATE ) ORDER BY PSTGDATE ASC, DEX_ROW_ID ASC END ELSE IF @PSTGDATE_RS = @PSTGDATE_RE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE PSTGDATE = @PSTGDATE_RS AND ( PSTGDATE = @PSTGDATE AND DEX_ROW_ID > @DEX_ROW_ID OR PSTGDATE > @PSTGDATE ) ORDER BY PSTGDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE PSTGDATE BETWEEN @PSTGDATE_RS AND @PSTGDATE_RE AND ( PSTGDATE = @PSTGDATE AND DEX_ROW_ID > @DEX_ROW_ID OR PSTGDATE > @PSTGDATE ) ORDER BY PSTGDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30600N_6] TO [DYNGRP]
GO
