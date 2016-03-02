SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TE022330N_2] (@BS int, @TERMSETUPCODE_I char(31), @TERMINATIONITEM_I char(51), @TERMSETUPCODE_I_RS char(31), @TERMINATIONITEM_I_RS char(51), @TERMSETUPCODE_I_RE char(31), @TERMINATIONITEM_I_RE char(51)) AS  set nocount on IF @TERMSETUPCODE_I_RS IS NULL BEGIN SELECT TOP 25  TERMSETUPCODE_I, SEQORDER_I, TERMINATIONITEM_I, PERSONRESPONSIBLE_I, EVENTENDDATE_I, DEX_ROW_ID FROM .TE022330 WHERE ( TERMSETUPCODE_I = @TERMSETUPCODE_I AND TERMINATIONITEM_I > @TERMINATIONITEM_I OR TERMSETUPCODE_I > @TERMSETUPCODE_I ) ORDER BY TERMSETUPCODE_I ASC, TERMINATIONITEM_I ASC END ELSE IF @TERMSETUPCODE_I_RS = @TERMSETUPCODE_I_RE BEGIN SELECT TOP 25  TERMSETUPCODE_I, SEQORDER_I, TERMINATIONITEM_I, PERSONRESPONSIBLE_I, EVENTENDDATE_I, DEX_ROW_ID FROM .TE022330 WHERE TERMSETUPCODE_I = @TERMSETUPCODE_I_RS AND TERMINATIONITEM_I BETWEEN @TERMINATIONITEM_I_RS AND @TERMINATIONITEM_I_RE AND ( TERMSETUPCODE_I = @TERMSETUPCODE_I AND TERMINATIONITEM_I > @TERMINATIONITEM_I OR TERMSETUPCODE_I > @TERMSETUPCODE_I ) ORDER BY TERMSETUPCODE_I ASC, TERMINATIONITEM_I ASC END ELSE BEGIN SELECT TOP 25  TERMSETUPCODE_I, SEQORDER_I, TERMINATIONITEM_I, PERSONRESPONSIBLE_I, EVENTENDDATE_I, DEX_ROW_ID FROM .TE022330 WHERE TERMSETUPCODE_I BETWEEN @TERMSETUPCODE_I_RS AND @TERMSETUPCODE_I_RE AND TERMINATIONITEM_I BETWEEN @TERMINATIONITEM_I_RS AND @TERMINATIONITEM_I_RE AND ( TERMSETUPCODE_I = @TERMSETUPCODE_I AND TERMINATIONITEM_I > @TERMINATIONITEM_I OR TERMSETUPCODE_I > @TERMSETUPCODE_I ) ORDER BY TERMSETUPCODE_I ASC, TERMINATIONITEM_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TE022330N_2] TO [DYNGRP]
GO
