SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80600SS_3] (@TRXSORCE char(13), @VCHRNMBR char(21), @DOCTYPE smallint, @APTVCHNM char(21), @APTODCTY smallint, @DSTSQNUM int) AS  set nocount on SELECT TOP 1  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND DSTSQNUM = @DSTSQNUM ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DOCTYPE ASC, APTVCHNM ASC, APTODCTY ASC, DSTSQNUM ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80600SS_3] TO [DYNGRP]
GO
