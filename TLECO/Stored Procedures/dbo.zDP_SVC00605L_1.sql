SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00605L_1] (@CONSTS_RS smallint, @CONTNBR_RS char(11), @SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @CONSTS_RE smallint, @CONTNBR_RE char(11), @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, SOPNUMBE, SOPTYPE, INVODATE, Invoiced_Amount, Amount_To_Invoice, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, svcReverseFlag, DEX_ROW_ID FROM .SVC00605 ORDER BY CONSTS DESC, CONTNBR DESC, SOPNUMBE DESC, SOPTYPE DESC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, SOPNUMBE, SOPTYPE, INVODATE, Invoiced_Amount, Amount_To_Invoice, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, svcReverseFlag, DEX_ROW_ID FROM .SVC00605 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY CONSTS DESC, CONTNBR DESC, SOPNUMBE DESC, SOPTYPE DESC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, SOPNUMBE, SOPTYPE, INVODATE, Invoiced_Amount, Amount_To_Invoice, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, svcReverseFlag, DEX_ROW_ID FROM .SVC00605 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY CONSTS DESC, CONTNBR DESC, SOPNUMBE DESC, SOPTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00605L_1] TO [DYNGRP]
GO