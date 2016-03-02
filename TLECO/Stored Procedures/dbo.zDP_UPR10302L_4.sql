SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10302L_4] (@EMPLOYID_RS char(15), @COMPTRTP_RS smallint, @UPRTRXCD_RS char(7), @EMPLOYID_RE char(15), @COMPTRTP_RE smallint, @UPRTRXCD_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 ORDER BY EMPLOYID DESC, COMPTRTP DESC, UPRTRXCD DESC, DEX_ROW_ID DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE EMPLOYID = @EMPLOYID_RS AND COMPTRTP BETWEEN @COMPTRTP_RS AND @COMPTRTP_RE AND UPRTRXCD BETWEEN @UPRTRXCD_RS AND @UPRTRXCD_RE ORDER BY EMPLOYID DESC, COMPTRTP DESC, UPRTRXCD DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND COMPTRTP BETWEEN @COMPTRTP_RS AND @COMPTRTP_RE AND UPRTRXCD BETWEEN @UPRTRXCD_RS AND @UPRTRXCD_RE ORDER BY EMPLOYID DESC, COMPTRTP DESC, UPRTRXCD DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10302L_4] TO [DYNGRP]
GO
