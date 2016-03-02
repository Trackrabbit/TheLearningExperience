SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00655SS_2] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @OPTTYPE char(11)) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNSEQNBR, OPTTYPE, STRTDATE, ENDDATE, UNITPRCE, UNITCOST, ORUNTCST, ORUNTPRC, DEX_ROW_ID FROM .SVC00655 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND OPTTYPE = @OPTTYPE ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, OPTTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00655SS_2] TO [DYNGRP]
GO
