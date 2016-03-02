SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00625L_4] (@USERID_RS char(15), @CNTTYPE_RS char(11), @CONSTS_RS smallint, @CONTNBR_RS char(11), @YEAR1_RS smallint, @PERIODID_RS smallint, @USERID_RE char(15), @CNTTYPE_RE char(11), @CONSTS_RE smallint, @CONTNBR_RE char(11), @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, CNTTYPE, CUSTNMBR, YEAR1, PERIODID, MKDTOPST, POSTED, Transaction_Amount, OrigTransactionAmount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00625 ORDER BY USERID DESC, CNTTYPE DESC, CONSTS DESC, CONTNBR DESC, YEAR1 DESC, PERIODID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, CNTTYPE, CUSTNMBR, YEAR1, PERIODID, MKDTOPST, POSTED, Transaction_Amount, OrigTransactionAmount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00625 WHERE USERID = @USERID_RS AND CNTTYPE BETWEEN @CNTTYPE_RS AND @CNTTYPE_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY USERID DESC, CNTTYPE DESC, CONSTS DESC, CONTNBR DESC, YEAR1 DESC, PERIODID DESC END ELSE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, CNTTYPE, CUSTNMBR, YEAR1, PERIODID, MKDTOPST, POSTED, Transaction_Amount, OrigTransactionAmount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00625 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CNTTYPE BETWEEN @CNTTYPE_RS AND @CNTTYPE_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY USERID DESC, CNTTYPE DESC, CONSTS DESC, CONTNBR DESC, YEAR1 DESC, PERIODID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00625L_4] TO [DYNGRP]
GO