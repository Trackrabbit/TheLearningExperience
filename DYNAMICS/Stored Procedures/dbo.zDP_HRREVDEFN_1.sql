SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRREVDEFN_1] (@BS int, @REVINTSEQUENCE_I smallint, @REVINTSEQUENCE_I_RS smallint, @REVINTSEQUENCE_I_RE smallint) AS  set nocount on IF @REVINTSEQUENCE_I_RS IS NULL BEGIN SELECT TOP 25  REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREVDEF WHERE ( REVINTSEQUENCE_I > @REVINTSEQUENCE_I ) ORDER BY REVINTSEQUENCE_I ASC END ELSE IF @REVINTSEQUENCE_I_RS = @REVINTSEQUENCE_I_RE BEGIN SELECT TOP 25  REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREVDEF WHERE REVINTSEQUENCE_I = @REVINTSEQUENCE_I_RS AND ( REVINTSEQUENCE_I > @REVINTSEQUENCE_I ) ORDER BY REVINTSEQUENCE_I ASC END ELSE BEGIN SELECT TOP 25  REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREVDEF WHERE REVINTSEQUENCE_I BETWEEN @REVINTSEQUENCE_I_RS AND @REVINTSEQUENCE_I_RE AND ( REVINTSEQUENCE_I > @REVINTSEQUENCE_I ) ORDER BY REVINTSEQUENCE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREVDEFN_1] TO [DYNGRP]
GO
