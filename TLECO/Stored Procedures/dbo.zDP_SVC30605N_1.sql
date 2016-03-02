SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30605N_1] (@BS int, @CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @SOPNUMBE char(21), @SOPTYPE smallint, @CONSTS_RS smallint, @CONTNBR_RS char(11), @SVC_Contract_Version_RS smallint, @SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @CONSTS_RE smallint, @CONTNBR_RE char(11), @SVC_Contract_Version_RE smallint, @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, SOPNUMBE, SOPTYPE, INVODATE, Invoiced_Amount, Amount_To_Invoice, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, SVC_Contract_Version, svcReverseFlag, DEX_ROW_ID FROM .SVC30605 WHERE ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND SOPNUMBE > @SOPNUMBE OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version > @SVC_Contract_Version OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, SOPNUMBE ASC, SOPTYPE ASC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, SOPNUMBE, SOPTYPE, INVODATE, Invoiced_Amount, Amount_To_Invoice, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, SVC_Contract_Version, svcReverseFlag, DEX_ROW_ID FROM .SVC30605 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SVC_Contract_Version BETWEEN @SVC_Contract_Version_RS AND @SVC_Contract_Version_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND SOPNUMBE > @SOPNUMBE OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version > @SVC_Contract_Version OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, SOPNUMBE ASC, SOPTYPE ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, SOPNUMBE, SOPTYPE, INVODATE, Invoiced_Amount, Amount_To_Invoice, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, SVC_Contract_Version, svcReverseFlag, DEX_ROW_ID FROM .SVC30605 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SVC_Contract_Version BETWEEN @SVC_Contract_Version_RS AND @SVC_Contract_Version_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND SOPNUMBE > @SOPNUMBE OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version > @SVC_Contract_Version OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, SOPNUMBE ASC, SOPTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30605N_1] TO [DYNGRP]
GO
