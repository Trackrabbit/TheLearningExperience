SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10302N_4] (@BS int, @EMPLOYID char(15), @COMPTRTP smallint, @UPRTRXCD char(7), @DEX_ROW_ID int, @EMPLOYID_RS char(15), @COMPTRTP_RS smallint, @UPRTRXCD_RS char(7), @EMPLOYID_RE char(15), @COMPTRTP_RE smallint, @UPRTRXCD_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE ( EMPLOYID = @EMPLOYID AND COMPTRTP = @COMPTRTP AND UPRTRXCD = @UPRTRXCD AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND COMPTRTP = @COMPTRTP AND UPRTRXCD > @UPRTRXCD OR EMPLOYID = @EMPLOYID AND COMPTRTP > @COMPTRTP OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, COMPTRTP ASC, UPRTRXCD ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE EMPLOYID = @EMPLOYID_RS AND COMPTRTP BETWEEN @COMPTRTP_RS AND @COMPTRTP_RE AND UPRTRXCD BETWEEN @UPRTRXCD_RS AND @UPRTRXCD_RE AND ( EMPLOYID = @EMPLOYID AND COMPTRTP = @COMPTRTP AND UPRTRXCD = @UPRTRXCD AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND COMPTRTP = @COMPTRTP AND UPRTRXCD > @UPRTRXCD OR EMPLOYID = @EMPLOYID AND COMPTRTP > @COMPTRTP OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, COMPTRTP ASC, UPRTRXCD ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND COMPTRTP BETWEEN @COMPTRTP_RS AND @COMPTRTP_RE AND UPRTRXCD BETWEEN @UPRTRXCD_RS AND @UPRTRXCD_RE AND ( EMPLOYID = @EMPLOYID AND COMPTRTP = @COMPTRTP AND UPRTRXCD = @UPRTRXCD AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND COMPTRTP = @COMPTRTP AND UPRTRXCD > @UPRTRXCD OR EMPLOYID = @EMPLOYID AND COMPTRTP > @COMPTRTP OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, COMPTRTP ASC, UPRTRXCD ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10302N_4] TO [DYNGRP]
GO