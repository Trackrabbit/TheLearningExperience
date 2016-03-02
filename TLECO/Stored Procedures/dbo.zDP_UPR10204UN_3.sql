SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10204UN_3] (@BS int, @EMPLOYID char(15), @DEDUCTON char(7), @EMPLOYID_RS char(15), @DEDUCTON_RS char(7), @EMPLOYID_RE char(15), @DEDUCTON_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, DEDUCTON, TXSHANTY, DEDNSQNC, VARDEDTN, VARDBAMT, VARDBPCT, DEDNFREQ, TTLDEDTN, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, DEDNMTHD, PRCSSQNC, SEQCOUNT, SEQUENCESUM, CALCCHKWRN, ATTEMPTEDAMT, SPLITMTHD, MAXAMOUNT, BASEDONWAGES, DEX_ROW_ID FROM .UPR10204 WHERE ( EMPLOYID = @EMPLOYID AND DEDUCTON > @DEDUCTON OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, DEDUCTON ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, DEDUCTON, TXSHANTY, DEDNSQNC, VARDEDTN, VARDBAMT, VARDBPCT, DEDNFREQ, TTLDEDTN, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, DEDNMTHD, PRCSSQNC, SEQCOUNT, SEQUENCESUM, CALCCHKWRN, ATTEMPTEDAMT, SPLITMTHD, MAXAMOUNT, BASEDONWAGES, DEX_ROW_ID FROM .UPR10204 WHERE EMPLOYID = @EMPLOYID_RS AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND ( EMPLOYID = @EMPLOYID AND DEDUCTON > @DEDUCTON OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, DEDUCTON ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, DEDUCTON, TXSHANTY, DEDNSQNC, VARDEDTN, VARDBAMT, VARDBPCT, DEDNFREQ, TTLDEDTN, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, DEDNMTHD, PRCSSQNC, SEQCOUNT, SEQUENCESUM, CALCCHKWRN, ATTEMPTEDAMT, SPLITMTHD, MAXAMOUNT, BASEDONWAGES, DEX_ROW_ID FROM .UPR10204 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND ( EMPLOYID = @EMPLOYID AND DEDUCTON > @DEDUCTON OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, DEDUCTON ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10204UN_3] TO [DYNGRP]
GO
