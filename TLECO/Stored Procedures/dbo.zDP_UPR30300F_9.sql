SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30300F_9] (@CMRECNUM_RS numeric(19,5), @CMRECNUM_RE numeric(19,5)) AS  set nocount on IF @CMRECNUM_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, AUCTRLCD, EMPLOYID, CHEKNMBR, PYADNMBR, TRXNUMBER, YEAR1, CHEKDATE, DEPRTMNT, PYRLRTYP, PAYROLCD, TRXSORCE, DOCTYPE, JOBTITLE, TRXBEGDT, TRXENDDT, UNTSTOPY, PAYRATE, UPRTRXAM, TIMETYPE_I, TIMEAVAILABLE, TipType, RECEIPTS, PAYADVNC, STATECD, LOCALTAX, WRKRCOMP, USWHPSTD, LSTDTEDT, LASTUSER, SHFTCODE, SHFTPREM, TXBLWAGS, DAYSWRDK, WKSWRKD, SUTASTAT, SBJTFUTA, BSDONRTE, EMPLCLAS, DEX_ROW_ID FROM .UPR30300 ORDER BY CMRECNUM ASC END ELSE IF @CMRECNUM_RS = @CMRECNUM_RE BEGIN SELECT TOP 25  CMRECNUM, AUCTRLCD, EMPLOYID, CHEKNMBR, PYADNMBR, TRXNUMBER, YEAR1, CHEKDATE, DEPRTMNT, PYRLRTYP, PAYROLCD, TRXSORCE, DOCTYPE, JOBTITLE, TRXBEGDT, TRXENDDT, UNTSTOPY, PAYRATE, UPRTRXAM, TIMETYPE_I, TIMEAVAILABLE, TipType, RECEIPTS, PAYADVNC, STATECD, LOCALTAX, WRKRCOMP, USWHPSTD, LSTDTEDT, LASTUSER, SHFTCODE, SHFTPREM, TXBLWAGS, DAYSWRDK, WKSWRKD, SUTASTAT, SBJTFUTA, BSDONRTE, EMPLCLAS, DEX_ROW_ID FROM .UPR30300 WHERE CMRECNUM = @CMRECNUM_RS ORDER BY CMRECNUM ASC END ELSE BEGIN SELECT TOP 25  CMRECNUM, AUCTRLCD, EMPLOYID, CHEKNMBR, PYADNMBR, TRXNUMBER, YEAR1, CHEKDATE, DEPRTMNT, PYRLRTYP, PAYROLCD, TRXSORCE, DOCTYPE, JOBTITLE, TRXBEGDT, TRXENDDT, UNTSTOPY, PAYRATE, UPRTRXAM, TIMETYPE_I, TIMEAVAILABLE, TipType, RECEIPTS, PAYADVNC, STATECD, LOCALTAX, WRKRCOMP, USWHPSTD, LSTDTEDT, LASTUSER, SHFTCODE, SHFTPREM, TXBLWAGS, DAYSWRDK, WKSWRKD, SUTASTAT, SBJTFUTA, BSDONRTE, EMPLCLAS, DEX_ROW_ID FROM .UPR30300 WHERE CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE ORDER BY CMRECNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30300F_9] TO [DYNGRP]
GO
