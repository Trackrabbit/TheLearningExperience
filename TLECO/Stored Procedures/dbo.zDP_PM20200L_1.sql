SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20200L_1] (@KEYSOURC_RS char(41), @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @APTVCHNM_RS char(21), @APTODCTY_RS smallint, @DSTSQNUM_RS int, @KEYSOURC_RE char(41), @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint, @APTVCHNM_RE char(21), @APTODCTY_RE smallint, @DSTSQNUM_RE int) AS  set nocount on IF @KEYSOURC_RS IS NULL BEGIN SELECT TOP 25  KEYSOURC, VCHRNMBR, DOCTYPE, DSTSQNUM, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, APTVCHNM, APTODCTY, CHANGED, USERID, PSTGSTUS, GLPOSTDT, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DEX_ROW_ID FROM .PM20200 ORDER BY KEYSOURC DESC, VCHRNMBR DESC, DOCTYPE DESC, APTVCHNM DESC, APTODCTY DESC, DSTSQNUM DESC END ELSE IF @KEYSOURC_RS = @KEYSOURC_RE BEGIN SELECT TOP 25  KEYSOURC, VCHRNMBR, DOCTYPE, DSTSQNUM, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, APTVCHNM, APTODCTY, CHANGED, USERID, PSTGSTUS, GLPOSTDT, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DEX_ROW_ID FROM .PM20200 WHERE KEYSOURC = @KEYSOURC_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY KEYSOURC DESC, VCHRNMBR DESC, DOCTYPE DESC, APTVCHNM DESC, APTODCTY DESC, DSTSQNUM DESC END ELSE BEGIN SELECT TOP 25  KEYSOURC, VCHRNMBR, DOCTYPE, DSTSQNUM, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, APTVCHNM, APTODCTY, CHANGED, USERID, PSTGSTUS, GLPOSTDT, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DEX_ROW_ID FROM .PM20200 WHERE KEYSOURC BETWEEN @KEYSOURC_RS AND @KEYSOURC_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY KEYSOURC DESC, VCHRNMBR DESC, DOCTYPE DESC, APTVCHNM DESC, APTODCTY DESC, DSTSQNUM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20200L_1] TO [DYNGRP]
GO
