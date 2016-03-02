SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00635L_1] (@USERID_RS char(15), @CONSTS_RS smallint, @CONTNBR_RS char(11), @SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @USERID_RE char(15), @CONSTS_RE smallint, @CONTNBR_RE char(11), @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 ORDER BY USERID DESC, CONSTS DESC, CONTNBR DESC, SOPNUMBE DESC, SOPTYPE DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 WHERE USERID = @USERID_RS AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY USERID DESC, CONSTS DESC, CONTNBR DESC, SOPNUMBE DESC, SOPTYPE DESC END ELSE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY USERID DESC, CONSTS DESC, CONTNBR DESC, SOPNUMBE DESC, SOPTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00635L_1] TO [DYNGRP]
GO