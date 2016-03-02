SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80600N_6] (@BS int, @DEX_ROW_ID int, @DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS AND ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE AND ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80600N_6] TO [DYNGRP]
GO
