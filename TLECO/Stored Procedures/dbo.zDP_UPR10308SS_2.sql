SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10308SS_2] (@MLCHKTYP smallint, @PYADNMBR int, @MLTRXTYP smallint, @UPRTRXCD char(7)) AS  set nocount on SELECT TOP 1  MLCHKTYP, PYADNMBR, EMPLOYID, MLTRXNBR, MLTRXTYP, UPRTRXCD, TRXBEGDT, TRXENDDT, HRLYPYRT, MLTRXAMT, MLTRXHRS, TXBLWAGS, RECEIPTS, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, WRKRCOMP, SUTASTAT, DAYSWRDK, WKSWRKD, LASTUSER, LSTDTEDT, NOTEINDX, SHFTCODE, SHFTPREM, EFICAMT, DEX_ROW_ID FROM .UPR10308 WHERE MLCHKTYP = @MLCHKTYP AND PYADNMBR = @PYADNMBR AND MLTRXTYP = @MLTRXTYP AND UPRTRXCD = @UPRTRXCD ORDER BY MLCHKTYP ASC, PYADNMBR ASC, MLTRXTYP ASC, UPRTRXCD ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10308SS_2] TO [DYNGRP]
GO