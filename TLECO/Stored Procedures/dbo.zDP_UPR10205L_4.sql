SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10205L_4] (@USERID_RS char(15), @EMPLOYID_RS char(15), @PYRNTYPE_RS smallint, @TRXNUMBER_RS int, @USERID_RE char(15), @EMPLOYID_RE char(15), @PYRNTYPE_RE smallint, @TRXNUMBER_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, BENEFIT, TAXABLE, VARBENFT, VARDBAMT, VARDBPCT, BNFTFREQ, TOTLBNFT, AMTBOTIP, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, BNFTMTHD, PRCSSQNC, DEX_ROW_ID FROM .UPR10205 ORDER BY USERID DESC, EMPLOYID DESC, PYRNTYPE DESC, TRXNUMBER DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, BENEFIT, TAXABLE, VARBENFT, VARDBAMT, VARDBPCT, BNFTFREQ, TOTLBNFT, AMTBOTIP, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, BNFTMTHD, PRCSSQNC, DEX_ROW_ID FROM .UPR10205 WHERE USERID = @USERID_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE ORDER BY USERID DESC, EMPLOYID DESC, PYRNTYPE DESC, TRXNUMBER DESC END ELSE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, BENEFIT, TAXABLE, VARBENFT, VARDBAMT, VARDBPCT, BNFTFREQ, TOTLBNFT, AMTBOTIP, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, BNFTMTHD, PRCSSQNC, DEX_ROW_ID FROM .UPR10205 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE ORDER BY USERID DESC, EMPLOYID DESC, PYRNTYPE DESC, TRXNUMBER DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10205L_4] TO [DYNGRP]
GO
