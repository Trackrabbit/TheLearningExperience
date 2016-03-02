SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00620N_1] (@BS int, @CONSTS smallint, @CONTNBR char(11), @LNITMSEQ int, @CONSTS_RS smallint, @CONTNBR_RS char(11), @LNITMSEQ_RS int, @CONSTS_RE smallint, @CONTNBR_RE char(11), @LNITMSEQ_RE int) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNITMSEQ, SVC_Contract_Line_SEQ, DATE1, TIME1, ITEMNMBR, SERLNMBR, ADRSCODE, ITEMDESC, USERID, DEX_ROW_ID FROM .SVC00620 WHERE ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNITMSEQ > @LNITMSEQ OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, LNITMSEQ ASC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNITMSEQ, SVC_Contract_Line_SEQ, DATE1, TIME1, ITEMNMBR, SERLNMBR, ADRSCODE, ITEMDESC, USERID, DEX_ROW_ID FROM .SVC00620 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNITMSEQ > @LNITMSEQ OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNITMSEQ, SVC_Contract_Line_SEQ, DATE1, TIME1, ITEMNMBR, SERLNMBR, ADRSCODE, ITEMDESC, USERID, DEX_ROW_ID FROM .SVC00620 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNITMSEQ > @LNITMSEQ OR CONSTS = @CONSTS AND CONTNBR > @CONTNBR OR CONSTS > @CONSTS ) ORDER BY CONSTS ASC, CONTNBR ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00620N_1] TO [DYNGRP]
GO