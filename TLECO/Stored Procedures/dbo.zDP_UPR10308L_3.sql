SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10308L_3] (@MLCHKTYP_RS smallint, @PYADNMBR_RS int, @MLCHKTYP_RE smallint, @PYADNMBR_RE int) AS  set nocount on IF @MLCHKTYP_RS IS NULL BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, EMPLOYID, MLTRXNBR, MLTRXTYP, UPRTRXCD, TRXBEGDT, TRXENDDT, HRLYPYRT, MLTRXAMT, MLTRXHRS, TXBLWAGS, RECEIPTS, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, WRKRCOMP, SUTASTAT, DAYSWRDK, WKSWRKD, LASTUSER, LSTDTEDT, NOTEINDX, SHFTCODE, SHFTPREM, EFICAMT, DEX_ROW_ID FROM .UPR10308 ORDER BY MLCHKTYP DESC, PYADNMBR DESC, DEX_ROW_ID DESC END ELSE IF @MLCHKTYP_RS = @MLCHKTYP_RE BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, EMPLOYID, MLTRXNBR, MLTRXTYP, UPRTRXCD, TRXBEGDT, TRXENDDT, HRLYPYRT, MLTRXAMT, MLTRXHRS, TXBLWAGS, RECEIPTS, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, WRKRCOMP, SUTASTAT, DAYSWRDK, WKSWRKD, LASTUSER, LSTDTEDT, NOTEINDX, SHFTCODE, SHFTPREM, EFICAMT, DEX_ROW_ID FROM .UPR10308 WHERE MLCHKTYP = @MLCHKTYP_RS AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE ORDER BY MLCHKTYP DESC, PYADNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, EMPLOYID, MLTRXNBR, MLTRXTYP, UPRTRXCD, TRXBEGDT, TRXENDDT, HRLYPYRT, MLTRXAMT, MLTRXHRS, TXBLWAGS, RECEIPTS, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, WRKRCOMP, SUTASTAT, DAYSWRDK, WKSWRKD, LASTUSER, LSTDTEDT, NOTEINDX, SHFTCODE, SHFTPREM, EFICAMT, DEX_ROW_ID FROM .UPR10308 WHERE MLCHKTYP BETWEEN @MLCHKTYP_RS AND @MLCHKTYP_RE AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE ORDER BY MLCHKTYP DESC, PYADNMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10308L_3] TO [DYNGRP]
GO
