SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10401N_1] (@BS int, @PRCSHID char(15), @SEQNUMBR int, @PRCSHID_RS char(15), @SEQNUMBR_RS int, @PRCSHID_RE char(15), @SEQNUMBR_RE int) AS  set nocount on IF @PRCSHID_RS IS NULL BEGIN SELECT TOP 25  PRCSHID, SEQNUMBR, EPITMTYP, ITEMNMBR, BRKPTPRC, ACTIVE, BASEUOFM, PRODTCOD, PROMOTYP, PROMOLVL, DEX_ROW_ID FROM .IV10401 WHERE ( PRCSHID = @PRCSHID AND SEQNUMBR > @SEQNUMBR OR PRCSHID > @PRCSHID ) ORDER BY PRCSHID ASC, SEQNUMBR ASC END ELSE IF @PRCSHID_RS = @PRCSHID_RE BEGIN SELECT TOP 25  PRCSHID, SEQNUMBR, EPITMTYP, ITEMNMBR, BRKPTPRC, ACTIVE, BASEUOFM, PRODTCOD, PROMOTYP, PROMOLVL, DEX_ROW_ID FROM .IV10401 WHERE PRCSHID = @PRCSHID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( PRCSHID = @PRCSHID AND SEQNUMBR > @SEQNUMBR OR PRCSHID > @PRCSHID ) ORDER BY PRCSHID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  PRCSHID, SEQNUMBR, EPITMTYP, ITEMNMBR, BRKPTPRC, ACTIVE, BASEUOFM, PRODTCOD, PROMOTYP, PROMOLVL, DEX_ROW_ID FROM .IV10401 WHERE PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( PRCSHID = @PRCSHID AND SEQNUMBR > @SEQNUMBR OR PRCSHID > @PRCSHID ) ORDER BY PRCSHID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10401N_1] TO [DYNGRP]
GO
