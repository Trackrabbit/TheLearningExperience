SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10308N_1] (@BS int, @MLCHKTYP smallint, @PYADNMBR int, @MLTRXNBR int, @MLCHKTYP_RS smallint, @PYADNMBR_RS int, @MLTRXNBR_RS int, @MLCHKTYP_RE smallint, @PYADNMBR_RE int, @MLTRXNBR_RE int) AS  set nocount on IF @MLCHKTYP_RS IS NULL BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, EMPLOYID, MLTRXNBR, MLTRXTYP, UPRTRXCD, TRXBEGDT, TRXENDDT, HRLYPYRT, MLTRXAMT, MLTRXHRS, TXBLWAGS, RECEIPTS, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, WRKRCOMP, SUTASTAT, DAYSWRDK, WKSWRKD, LASTUSER, LSTDTEDT, NOTEINDX, SHFTCODE, SHFTPREM, EFICAMT, DEX_ROW_ID FROM .UPR10308 WHERE ( MLCHKTYP = @MLCHKTYP AND PYADNMBR = @PYADNMBR AND MLTRXNBR > @MLTRXNBR OR MLCHKTYP = @MLCHKTYP AND PYADNMBR > @PYADNMBR OR MLCHKTYP > @MLCHKTYP ) ORDER BY MLCHKTYP ASC, PYADNMBR ASC, MLTRXNBR ASC END ELSE IF @MLCHKTYP_RS = @MLCHKTYP_RE BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, EMPLOYID, MLTRXNBR, MLTRXTYP, UPRTRXCD, TRXBEGDT, TRXENDDT, HRLYPYRT, MLTRXAMT, MLTRXHRS, TXBLWAGS, RECEIPTS, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, WRKRCOMP, SUTASTAT, DAYSWRDK, WKSWRKD, LASTUSER, LSTDTEDT, NOTEINDX, SHFTCODE, SHFTPREM, EFICAMT, DEX_ROW_ID FROM .UPR10308 WHERE MLCHKTYP = @MLCHKTYP_RS AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE AND MLTRXNBR BETWEEN @MLTRXNBR_RS AND @MLTRXNBR_RE AND ( MLCHKTYP = @MLCHKTYP AND PYADNMBR = @PYADNMBR AND MLTRXNBR > @MLTRXNBR OR MLCHKTYP = @MLCHKTYP AND PYADNMBR > @PYADNMBR OR MLCHKTYP > @MLCHKTYP ) ORDER BY MLCHKTYP ASC, PYADNMBR ASC, MLTRXNBR ASC END ELSE BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, EMPLOYID, MLTRXNBR, MLTRXTYP, UPRTRXCD, TRXBEGDT, TRXENDDT, HRLYPYRT, MLTRXAMT, MLTRXHRS, TXBLWAGS, RECEIPTS, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, WRKRCOMP, SUTASTAT, DAYSWRDK, WKSWRKD, LASTUSER, LSTDTEDT, NOTEINDX, SHFTCODE, SHFTPREM, EFICAMT, DEX_ROW_ID FROM .UPR10308 WHERE MLCHKTYP BETWEEN @MLCHKTYP_RS AND @MLCHKTYP_RE AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE AND MLTRXNBR BETWEEN @MLTRXNBR_RS AND @MLTRXNBR_RE AND ( MLCHKTYP = @MLCHKTYP AND PYADNMBR = @PYADNMBR AND MLTRXNBR > @MLTRXNBR OR MLCHKTYP = @MLCHKTYP AND PYADNMBR > @PYADNMBR OR MLCHKTYP > @MLCHKTYP ) ORDER BY MLCHKTYP ASC, PYADNMBR ASC, MLTRXNBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10308N_1] TO [DYNGRP]
GO