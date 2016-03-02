SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00610N_1] (@BS int, @CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @EQUIPID int, @SCHEDID char(9), @CONSTS_RS smallint, @CONTNBR_RS char(11), @LNSEQNBR_RS numeric(19,5), @EQUIPID_RS int, @SCHEDID_RS char(9), @CONSTS_RE smallint, @CONTNBR_RE char(11), @LNSEQNBR_RE numeric(19,5), @EQUIPID_RE int, @SCHEDID_RE char(9)) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, EQUIPID, ACTIVE, SCHEDID, DEX_ROW_ID FROM .SVC00610 WHERE ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND EQUIPID = @EQUIPID AND SCHEDID > @SCHEDID OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND EQUIPID > @EQUIPID OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR > @LNSEQNBR OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, EQUIPID ASC, SCHEDID ASC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, EQUIPID, ACTIVE, SCHEDID, DEX_ROW_ID FROM .SVC00610 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND SCHEDID BETWEEN @SCHEDID_RS AND @SCHEDID_RE AND ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND EQUIPID = @EQUIPID AND SCHEDID > @SCHEDID OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND EQUIPID > @EQUIPID OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR > @LNSEQNBR OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, EQUIPID ASC, SCHEDID ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, EQUIPID, ACTIVE, SCHEDID, DEX_ROW_ID FROM .SVC00610 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND SCHEDID BETWEEN @SCHEDID_RS AND @SCHEDID_RE AND ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND EQUIPID = @EQUIPID AND SCHEDID > @SCHEDID OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND EQUIPID > @EQUIPID OR CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR > @LNSEQNBR OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, EQUIPID ASC, SCHEDID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00610N_1] TO [DYNGRP]
GO
