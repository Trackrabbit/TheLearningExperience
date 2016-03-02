SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10203N_5] (@BS int, @USERID char(15), @EMPLOYID char(15), @PYRNTYPE smallint, @TRXNUMBER int, @USERID_RS char(15), @EMPLOYID_RS char(15), @PYRNTYPE_RS smallint, @TRXNUMBER_RS int, @USERID_RE char(15), @EMPLOYID_RE char(15), @PYRNTYPE_RE smallint, @TRXNUMBER_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, PAYRCORD, PRCSSQNC, PAYTYPE, BSPAYRCD, BSPAYTYP, BSDONRTE, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, PAYADVNC, TIMETYPE_I, TIMEAVAILABLE, ACRUVACN, ACRUSTIM, RPTASWGS, DAYSWRDK, WKSWRKD, RECEIPTS, TipType, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, UNTSTOPY, ADJUNITS, TOTALPAY, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, SHFTCODE, SHFTPREM, DEX_ROW_ID FROM .UPR10203 WHERE ( USERID = @USERID AND EMPLOYID = @EMPLOYID AND PYRNTYPE = @PYRNTYPE AND TRXNUMBER > @TRXNUMBER OR USERID = @USERID AND EMPLOYID = @EMPLOYID AND PYRNTYPE > @PYRNTYPE OR USERID = @USERID AND EMPLOYID > @EMPLOYID OR USERID > @USERID ) ORDER BY USERID ASC, EMPLOYID ASC, PYRNTYPE ASC, TRXNUMBER ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, PAYRCORD, PRCSSQNC, PAYTYPE, BSPAYRCD, BSPAYTYP, BSDONRTE, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, PAYADVNC, TIMETYPE_I, TIMEAVAILABLE, ACRUVACN, ACRUSTIM, RPTASWGS, DAYSWRDK, WKSWRKD, RECEIPTS, TipType, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, UNTSTOPY, ADJUNITS, TOTALPAY, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, SHFTCODE, SHFTPREM, DEX_ROW_ID FROM .UPR10203 WHERE USERID = @USERID_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE AND ( USERID = @USERID AND EMPLOYID = @EMPLOYID AND PYRNTYPE = @PYRNTYPE AND TRXNUMBER > @TRXNUMBER OR USERID = @USERID AND EMPLOYID = @EMPLOYID AND PYRNTYPE > @PYRNTYPE OR USERID = @USERID AND EMPLOYID > @EMPLOYID OR USERID > @USERID ) ORDER BY USERID ASC, EMPLOYID ASC, PYRNTYPE ASC, TRXNUMBER ASC END ELSE BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, PAYRCORD, PRCSSQNC, PAYTYPE, BSPAYRCD, BSPAYTYP, BSDONRTE, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, PAYADVNC, TIMETYPE_I, TIMEAVAILABLE, ACRUVACN, ACRUSTIM, RPTASWGS, DAYSWRDK, WKSWRKD, RECEIPTS, TipType, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, UNTSTOPY, ADJUNITS, TOTALPAY, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, SHFTCODE, SHFTPREM, DEX_ROW_ID FROM .UPR10203 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE AND ( USERID = @USERID AND EMPLOYID = @EMPLOYID AND PYRNTYPE = @PYRNTYPE AND TRXNUMBER > @TRXNUMBER OR USERID = @USERID AND EMPLOYID = @EMPLOYID AND PYRNTYPE > @PYRNTYPE OR USERID = @USERID AND EMPLOYID > @EMPLOYID OR USERID > @USERID ) ORDER BY USERID ASC, EMPLOYID ASC, PYRNTYPE ASC, TRXNUMBER ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10203N_5] TO [DYNGRP]
GO
