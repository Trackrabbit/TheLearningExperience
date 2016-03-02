SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00635F_3] (@USERID_RS char(15), @MKDTOPST_RS tinyint, @CONSTS_RS smallint, @CONTNBR_RS char(11), @USERID_RE char(15), @MKDTOPST_RE tinyint, @CONSTS_RE smallint, @CONTNBR_RE char(11)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 ORDER BY USERID ASC, MKDTOPST ASC, CONSTS ASC, CONTNBR ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 WHERE USERID = @USERID_RS AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE ORDER BY USERID ASC, MKDTOPST ASC, CONSTS ASC, CONTNBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE ORDER BY USERID ASC, MKDTOPST ASC, CONSTS ASC, CONTNBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00635F_3] TO [DYNGRP]
GO
