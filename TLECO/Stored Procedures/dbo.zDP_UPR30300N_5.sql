SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30300N_5] (@BS int, @EMPLOYID char(15), @CHEKNMBR char(21), @DEX_ROW_ID int, @EMPLOYID_RS char(15), @CHEKNMBR_RS char(21), @EMPLOYID_RE char(15), @CHEKNMBR_RE char(21)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, AUCTRLCD, EMPLOYID, CHEKNMBR, PYADNMBR, TRXNUMBER, YEAR1, CHEKDATE, DEPRTMNT, PYRLRTYP, PAYROLCD, TRXSORCE, DOCTYPE, JOBTITLE, TRXBEGDT, TRXENDDT, UNTSTOPY, PAYRATE, UPRTRXAM, TIMETYPE_I, TIMEAVAILABLE, TipType, RECEIPTS, PAYADVNC, STATECD, LOCALTAX, WRKRCOMP, USWHPSTD, LSTDTEDT, LASTUSER, SHFTCODE, SHFTPREM, TXBLWAGS, DAYSWRDK, WKSWRKD, SUTASTAT, SBJTFUTA, BSDONRTE, EMPLCLAS, DEX_ROW_ID FROM .UPR30300 WHERE ( EMPLOYID = @EMPLOYID AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CHEKNMBR > @CHEKNMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  CMRECNUM, AUCTRLCD, EMPLOYID, CHEKNMBR, PYADNMBR, TRXNUMBER, YEAR1, CHEKDATE, DEPRTMNT, PYRLRTYP, PAYROLCD, TRXSORCE, DOCTYPE, JOBTITLE, TRXBEGDT, TRXENDDT, UNTSTOPY, PAYRATE, UPRTRXAM, TIMETYPE_I, TIMEAVAILABLE, TipType, RECEIPTS, PAYADVNC, STATECD, LOCALTAX, WRKRCOMP, USWHPSTD, LSTDTEDT, LASTUSER, SHFTCODE, SHFTPREM, TXBLWAGS, DAYSWRDK, WKSWRKD, SUTASTAT, SBJTFUTA, BSDONRTE, EMPLCLAS, DEX_ROW_ID FROM .UPR30300 WHERE EMPLOYID = @EMPLOYID_RS AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE AND ( EMPLOYID = @EMPLOYID AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CHEKNMBR > @CHEKNMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CMRECNUM, AUCTRLCD, EMPLOYID, CHEKNMBR, PYADNMBR, TRXNUMBER, YEAR1, CHEKDATE, DEPRTMNT, PYRLRTYP, PAYROLCD, TRXSORCE, DOCTYPE, JOBTITLE, TRXBEGDT, TRXENDDT, UNTSTOPY, PAYRATE, UPRTRXAM, TIMETYPE_I, TIMEAVAILABLE, TipType, RECEIPTS, PAYADVNC, STATECD, LOCALTAX, WRKRCOMP, USWHPSTD, LSTDTEDT, LASTUSER, SHFTCODE, SHFTPREM, TXBLWAGS, DAYSWRDK, WKSWRKD, SUTASTAT, SBJTFUTA, BSDONRTE, EMPLCLAS, DEX_ROW_ID FROM .UPR30300 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE AND ( EMPLOYID = @EMPLOYID AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CHEKNMBR > @CHEKNMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30300N_5] TO [DYNGRP]
GO
