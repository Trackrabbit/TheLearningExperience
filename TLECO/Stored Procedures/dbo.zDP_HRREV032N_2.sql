SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRREV032N_2] (@BS int, @REVIEWSETUPCODE_I char(31), @REVINTSEQUENCE_I smallint, @REVIEWSETUPCODE_I_RS char(31), @REVINTSEQUENCE_I_RS smallint, @REVIEWSETUPCODE_I_RE char(31), @REVINTSEQUENCE_I_RE smallint) AS  set nocount on IF @REVIEWSETUPCODE_I_RS IS NULL BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREV032 WHERE ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVINTSEQUENCE_I > @REVINTSEQUENCE_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, REVINTSEQUENCE_I ASC END ELSE IF @REVIEWSETUPCODE_I_RS = @REVIEWSETUPCODE_I_RE BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREV032 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I_RS AND REVINTSEQUENCE_I BETWEEN @REVINTSEQUENCE_I_RS AND @REVINTSEQUENCE_I_RE AND ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVINTSEQUENCE_I > @REVINTSEQUENCE_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, REVINTSEQUENCE_I ASC END ELSE BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREV032 WHERE REVIEWSETUPCODE_I BETWEEN @REVIEWSETUPCODE_I_RS AND @REVIEWSETUPCODE_I_RE AND REVINTSEQUENCE_I BETWEEN @REVINTSEQUENCE_I_RS AND @REVINTSEQUENCE_I_RE AND ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVINTSEQUENCE_I > @REVINTSEQUENCE_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, REVINTSEQUENCE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREV032N_2] TO [DYNGRP]
GO