SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRREV032F_1] (@REVIEWSETUPCODE_I_RS char(31), @REVIEWSETUPCODE_I_RE char(31)) AS  set nocount on IF @REVIEWSETUPCODE_I_RS IS NULL BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREV032 ORDER BY REVIEWSETUPCODE_I ASC, DEX_ROW_ID ASC END ELSE IF @REVIEWSETUPCODE_I_RS = @REVIEWSETUPCODE_I_RE BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREV032 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I_RS ORDER BY REVIEWSETUPCODE_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREV032 WHERE REVIEWSETUPCODE_I BETWEEN @REVIEWSETUPCODE_I_RS AND @REVIEWSETUPCODE_I_RE ORDER BY REVIEWSETUPCODE_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREV032F_1] TO [DYNGRP]
GO
