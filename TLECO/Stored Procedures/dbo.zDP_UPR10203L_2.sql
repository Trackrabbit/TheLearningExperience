SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10203L_2] (@USERID_RS char(15), @PYRNTYPE_RS smallint, @EMPLOYID_RS char(15), @PRCSSQNC_RS smallint, @PAYRCORD_RS char(7), @USERID_RE char(15), @PYRNTYPE_RE smallint, @EMPLOYID_RE char(15), @PRCSSQNC_RE smallint, @PAYRCORD_RE char(7)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, PAYRCORD, PRCSSQNC, PAYTYPE, BSPAYRCD, BSPAYTYP, BSDONRTE, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, PAYADVNC, TIMETYPE_I, TIMEAVAILABLE, ACRUVACN, ACRUSTIM, RPTASWGS, DAYSWRDK, WKSWRKD, RECEIPTS, TipType, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, UNTSTOPY, ADJUNITS, TOTALPAY, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, SHFTCODE, SHFTPREM, DEX_ROW_ID FROM .UPR10203 ORDER BY USERID DESC, PYRNTYPE DESC, EMPLOYID DESC, PRCSSQNC DESC, PAYRCORD DESC, DEX_ROW_ID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, PAYRCORD, PRCSSQNC, PAYTYPE, BSPAYRCD, BSPAYTYP, BSDONRTE, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, PAYADVNC, TIMETYPE_I, TIMEAVAILABLE, ACRUVACN, ACRUSTIM, RPTASWGS, DAYSWRDK, WKSWRKD, RECEIPTS, TipType, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, UNTSTOPY, ADJUNITS, TOTALPAY, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, SHFTCODE, SHFTPREM, DEX_ROW_ID FROM .UPR10203 WHERE USERID = @USERID_RS AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY USERID DESC, PYRNTYPE DESC, EMPLOYID DESC, PRCSSQNC DESC, PAYRCORD DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, PAYRCORD, PRCSSQNC, PAYTYPE, BSPAYRCD, BSPAYTYP, BSDONRTE, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, PAYADVNC, TIMETYPE_I, TIMEAVAILABLE, ACRUVACN, ACRUSTIM, RPTASWGS, DAYSWRDK, WKSWRKD, RECEIPTS, TipType, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, UNTSTOPY, ADJUNITS, TOTALPAY, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, SHFTCODE, SHFTPREM, DEX_ROW_ID FROM .UPR10203 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY USERID DESC, PYRNTYPE DESC, EMPLOYID DESC, PRCSSQNC DESC, PAYRCORD DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10203L_2] TO [DYNGRP]
GO
