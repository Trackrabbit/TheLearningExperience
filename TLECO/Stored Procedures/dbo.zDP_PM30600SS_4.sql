SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30600SS_4] (@DSTINDX int) AS  set nocount on SELECT TOP 1  DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, DEX_ROW_ID FROM .PM30600 WHERE DSTINDX = @DSTINDX ORDER BY DSTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30600SS_4] TO [DYNGRP]
GO
