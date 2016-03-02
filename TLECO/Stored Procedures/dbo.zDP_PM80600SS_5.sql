SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80600SS_5] (@TRXSORCE char(13), @KEYSOURC char(41)) AS  set nocount on SELECT TOP 1  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE TRXSORCE = @TRXSORCE AND KEYSOURC = @KEYSOURC ORDER BY TRXSORCE ASC, KEYSOURC ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80600SS_5] TO [DYNGRP]
GO
