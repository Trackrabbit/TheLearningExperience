SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30652UN_1] (@BS int, @CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @LNSEQNBR numeric(19,5), @CONSTS_RS smallint, @CONTNBR_RS char(11), @SVC_Contract_Version_RS smallint, @LNSEQNBR_RS numeric(19,5), @CONSTS_RE smallint, @CONTNBR_RE char(11), @SVC_Contract_Version_RE smallint, @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, OPTTYPE, STRTDATE, ENDDATE, UNITPRCE, UNITCOST, ORUNTCST, ORUNTPRC, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30652 WHERE ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND LNSEQNBR > @LNSEQNBR OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version > @SVC_Contract_Version OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, OPTTYPE, STRTDATE, ENDDATE, UNITPRCE, UNITCOST, ORUNTCST, ORUNTPRC, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30652 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SVC_Contract_Version BETWEEN @SVC_Contract_Version_RS AND @SVC_Contract_Version_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND LNSEQNBR > @LNSEQNBR OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version > @SVC_Contract_Version OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, OPTTYPE, STRTDATE, ENDDATE, UNITPRCE, UNITCOST, ORUNTCST, ORUNTPRC, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30652 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SVC_Contract_Version BETWEEN @SVC_Contract_Version_RS AND @SVC_Contract_Version_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND LNSEQNBR > @LNSEQNBR OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version > @SVC_Contract_Version OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30652UN_1] TO [DYNGRP]
GO
