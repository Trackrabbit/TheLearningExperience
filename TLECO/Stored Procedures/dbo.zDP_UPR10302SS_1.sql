SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10302SS_1] (@COMPTRNM int) AS  set nocount on SELECT TOP 1  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE COMPTRNM = @COMPTRNM ORDER BY COMPTRNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10302SS_1] TO [DYNGRP]
GO
