SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00606N_2] (@BS int, @ITEMNMBR char(31), @CONSTS smallint, @CONTNBR char(11), @ITEMNMBR_RS char(31), @CONSTS_RS smallint, @CONTNBR_RS char(11), @ITEMNMBR_RE char(31), @CONSTS_RE smallint, @CONTNBR_RE char(11)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, ITEMNMBR, DEX_ROW_ID FROM .SVC00606 WHERE ( ITEMNMBR = @ITEMNMBR AND CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR ITEMNMBR = @ITEMNMBR AND CONSTS > @CONSTS OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, CONSTS ASC, CONTNBR ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, ITEMNMBR, DEX_ROW_ID FROM .SVC00606 WHERE ITEMNMBR = @ITEMNMBR_RS AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND ( ITEMNMBR = @ITEMNMBR AND CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR ITEMNMBR = @ITEMNMBR AND CONSTS > @CONSTS OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, CONSTS ASC, CONTNBR ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, ITEMNMBR, DEX_ROW_ID FROM .SVC00606 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND ( ITEMNMBR = @ITEMNMBR AND CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR ITEMNMBR = @ITEMNMBR AND CONSTS > @CONSTS OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, CONSTS ASC, CONTNBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00606N_2] TO [DYNGRP]
GO