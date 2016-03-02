SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10302L_3] (@BACHNUMB_RS char(15), @EMPLOYID_RS char(15), @UPRTRXCD_RS char(7), @BACHNUMB_RE char(15), @EMPLOYID_RE char(15), @UPRTRXCD_RE char(7)) AS  set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 ORDER BY BACHNUMB DESC, EMPLOYID DESC, UPRTRXCD DESC, DEX_ROW_ID DESC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE BACHNUMB = @BACHNUMB_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND UPRTRXCD BETWEEN @UPRTRXCD_RS AND @UPRTRXCD_RE ORDER BY BACHNUMB DESC, EMPLOYID DESC, UPRTRXCD DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND UPRTRXCD BETWEEN @UPRTRXCD_RS AND @UPRTRXCD_RE ORDER BY BACHNUMB DESC, EMPLOYID DESC, UPRTRXCD DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10302L_3] TO [DYNGRP]
GO
