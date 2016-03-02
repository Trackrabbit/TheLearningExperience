SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30600L_4] (@DSTINDX_RS int, @DSTINDX_RE int) AS  set nocount on IF @DSTINDX_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 ORDER BY DSTINDX DESC, DEX_ROW_ID DESC END ELSE IF @DSTINDX_RS = @DSTINDX_RE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE DSTINDX = @DSTINDX_RS ORDER BY DSTINDX DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE DSTINDX BETWEEN @DSTINDX_RS AND @DSTINDX_RE ORDER BY DSTINDX DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30600L_4] TO [DYNGRP]
GO
