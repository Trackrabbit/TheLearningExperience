SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00635N_1] (@BS int, @USERID char(15), @CONSTS smallint, @CONTNBR char(11), @SOPNUMBE char(21), @SOPTYPE smallint, @USERID_RS char(15), @CONSTS_RS smallint, @CONTNBR_RS char(11), @SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @USERID_RE char(15), @CONSTS_RE smallint, @CONTNBR_RE char(11), @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 WHERE ( USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR USERID = @USERID AND CONSTS > @CONSTS OR USERID > @USERID ) ORDER BY USERID ASC, CONSTS ASC, CONTNBR ASC, SOPNUMBE ASC, SOPTYPE ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 WHERE USERID = @USERID_RS AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR USERID = @USERID AND CONSTS > @CONSTS OR USERID > @USERID ) ORDER BY USERID ASC, CONSTS ASC, CONTNBR ASC, SOPNUMBE ASC, SOPTYPE ASC END ELSE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, SOPTYPE, SOPNUMBE, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00635 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR USERID = @USERID AND CONSTS > @CONSTS OR USERID > @USERID ) ORDER BY USERID ASC, CONSTS ASC, CONTNBR ASC, SOPNUMBE ASC, SOPTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00635N_1] TO [DYNGRP]
GO