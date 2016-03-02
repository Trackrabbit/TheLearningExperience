SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80600N_4] (@BS int, @TRXSORCE char(13), @VCHRNMBR char(21), @DOCTYPE smallint, @DSTSQNUM int, @DEX_ROW_ID int, @TRXSORCE_RS char(13), @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @DSTSQNUM_RS int, @TRXSORCE_RE char(13), @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint, @DSTSQNUM_RE int) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE ( TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DSTSQNUM = @DSTSQNUM AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DSTSQNUM > @DSTSQNUM OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR TRXSORCE = @TRXSORCE AND VCHRNMBR > @VCHRNMBR OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DOCTYPE ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE TRXSORCE = @TRXSORCE_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DSTSQNUM = @DSTSQNUM AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DSTSQNUM > @DSTSQNUM OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR TRXSORCE = @TRXSORCE AND VCHRNMBR > @VCHRNMBR OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DOCTYPE ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DSTINDX, DISTTYPE, USERID, VENDORID, TRXSORCE, POSTEDDT, DOCTYPE, PSTGDATE, KEYSOURC, APTODCTY, APTVCHNM, CURNCYID, CURRNIDX, INTERID, ICTRX, ICCURRID, ICCURRIX, DEX_ROW_ID FROM .PM80600 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DSTSQNUM = @DSTSQNUM AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DSTSQNUM > @DSTSQNUM OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR TRXSORCE = @TRXSORCE AND VCHRNMBR > @VCHRNMBR OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DOCTYPE ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80600N_4] TO [DYNGRP]
GO
