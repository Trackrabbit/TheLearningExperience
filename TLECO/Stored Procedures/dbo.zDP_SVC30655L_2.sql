SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30655L_2] (@CONSTS_RS smallint, @CONTNBR_RS char(11), @SVC_Contract_Version_RS smallint, @LNSEQNBR_RS numeric(19,5), @OPTTYPE_RS char(11), @CONSTS_RE smallint, @CONTNBR_RE char(11), @SVC_Contract_Version_RE smallint, @LNSEQNBR_RE numeric(19,5), @OPTTYPE_RE char(11)) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, OPTTYPE, STRTDATE, ENDDATE, UNITPRCE, UNITCOST, ORUNTCST, ORUNTPRC, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30655 ORDER BY CONSTS DESC, CONTNBR DESC, SVC_Contract_Version DESC, LNSEQNBR DESC, OPTTYPE DESC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, OPTTYPE, STRTDATE, ENDDATE, UNITPRCE, UNITCOST, ORUNTCST, ORUNTPRC, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30655 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SVC_Contract_Version BETWEEN @SVC_Contract_Version_RS AND @SVC_Contract_Version_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND OPTTYPE BETWEEN @OPTTYPE_RS AND @OPTTYPE_RE ORDER BY CONSTS DESC, CONTNBR DESC, SVC_Contract_Version DESC, LNSEQNBR DESC, OPTTYPE DESC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, OPTTYPE, STRTDATE, ENDDATE, UNITPRCE, UNITCOST, ORUNTCST, ORUNTPRC, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30655 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND SVC_Contract_Version BETWEEN @SVC_Contract_Version_RS AND @SVC_Contract_Version_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND OPTTYPE BETWEEN @OPTTYPE_RS AND @OPTTYPE_RE ORDER BY CONSTS DESC, CONTNBR DESC, SVC_Contract_Version DESC, LNSEQNBR DESC, OPTTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30655L_2] TO [DYNGRP]
GO