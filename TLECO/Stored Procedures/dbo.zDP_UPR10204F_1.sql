SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10204F_1] (@USERID_RS char(15), @PYRNTYPE_RS smallint, @EMPLOYID_RS char(15), @DEDUCTON_RS char(7), @PRCSSQNC_RS smallint, @USERID_RE char(15), @PYRNTYPE_RE smallint, @EMPLOYID_RE char(15), @DEDUCTON_RE char(7), @PRCSSQNC_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, DEDUCTON, TXSHANTY, DEDNSQNC, VARDEDTN, VARDBAMT, VARDBPCT, DEDNFREQ, TTLDEDTN, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, DEDNMTHD, PRCSSQNC, SEQCOUNT, SEQUENCESUM, CALCCHKWRN, ATTEMPTEDAMT, SPLITMTHD, MAXAMOUNT, BASEDONWAGES, DEX_ROW_ID FROM .UPR10204 ORDER BY USERID ASC, PYRNTYPE ASC, EMPLOYID ASC, DEDUCTON ASC, PRCSSQNC ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, DEDUCTON, TXSHANTY, DEDNSQNC, VARDEDTN, VARDBAMT, VARDBPCT, DEDNFREQ, TTLDEDTN, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, DEDNMTHD, PRCSSQNC, SEQCOUNT, SEQUENCESUM, CALCCHKWRN, ATTEMPTEDAMT, SPLITMTHD, MAXAMOUNT, BASEDONWAGES, DEX_ROW_ID FROM .UPR10204 WHERE USERID = @USERID_RS AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE ORDER BY USERID ASC, PYRNTYPE ASC, EMPLOYID ASC, DEDUCTON ASC, PRCSSQNC ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, DEDUCTON, TXSHANTY, DEDNSQNC, VARDEDTN, VARDBAMT, VARDBPCT, DEDNFREQ, TTLDEDTN, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, DEDNMTHD, PRCSSQNC, SEQCOUNT, SEQUENCESUM, CALCCHKWRN, ATTEMPTEDAMT, SPLITMTHD, MAXAMOUNT, BASEDONWAGES, DEX_ROW_ID FROM .UPR10204 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE ORDER BY USERID ASC, PYRNTYPE ASC, EMPLOYID ASC, DEDUCTON ASC, PRCSSQNC ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10204F_1] TO [DYNGRP]
GO
