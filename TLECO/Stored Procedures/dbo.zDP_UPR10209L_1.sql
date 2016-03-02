SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10209L_1] (@USERID_RS char(15), @PYRNTYPE_RS smallint, @EMPLOYID_RS char(15), @TRXNUMBER_RS int, @ACTINDX_RS int, @SEQNUMBR_RS int, @USERID_RE char(15), @PYRNTYPE_RE smallint, @EMPLOYID_RE char(15), @TRXNUMBER_RE int, @ACTINDX_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, EMPLOYID, PYRNTYPE, PYRLRTYP, TRXNUMBER, SEQNUMBR, ACTINDX, AMNTOPST, CHEKNMBR, POSTEDDT, DEPRTMNT, JOBTITLE, PAYROLCD, UPRACTYP, PYADNMBR, DEX_ROW_ID FROM .UPR10209 ORDER BY USERID DESC, PYRNTYPE DESC, EMPLOYID DESC, TRXNUMBER DESC, ACTINDX DESC, SEQNUMBR DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, EMPLOYID, PYRNTYPE, PYRLRTYP, TRXNUMBER, SEQNUMBR, ACTINDX, AMNTOPST, CHEKNMBR, POSTEDDT, DEPRTMNT, JOBTITLE, PAYROLCD, UPRACTYP, PYADNMBR, DEX_ROW_ID FROM .UPR10209 WHERE USERID = @USERID_RS AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY USERID DESC, PYRNTYPE DESC, EMPLOYID DESC, TRXNUMBER DESC, ACTINDX DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  USERID, EMPLOYID, PYRNTYPE, PYRLRTYP, TRXNUMBER, SEQNUMBR, ACTINDX, AMNTOPST, CHEKNMBR, POSTEDDT, DEPRTMNT, JOBTITLE, PAYROLCD, UPRACTYP, PYADNMBR, DEX_ROW_ID FROM .UPR10209 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY USERID DESC, PYRNTYPE DESC, EMPLOYID DESC, TRXNUMBER DESC, ACTINDX DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10209L_1] TO [DYNGRP]
GO
