SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10302SS_7] (@BACHNUMB char(15), @JOBTITLE char(7)) AS  set nocount on SELECT TOP 1  COMPTRNM, BACHNUMB, EMPLOYID, COMPTRTP, SALCHG, UPRTRXCD, TRXBEGDT, TRXENDDT, TRXHRUNT, HRLYPYRT, PAYRTAMT, VARDBAMT, VARDBPCT, RECEIPTS, DAYSWRDK, WKSWRKD, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, LASTUSER, LSTDTEDT, TRXSORCE, DOCTYPE, VOIDED, NOTEINDX, INADDNTOSAL, SHFTCODE, SHFTPREM, JOBNUMBR, UNIONCD, DEX_ROW_ID FROM .UPR10302 WHERE BACHNUMB = @BACHNUMB AND JOBTITLE = @JOBTITLE ORDER BY BACHNUMB ASC, JOBTITLE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10302SS_7] TO [DYNGRP]
GO
