SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRREVDEFL_1] (@REVINTSEQUENCE_I_RS smallint, @REVINTSEQUENCE_I_RE smallint) AS  set nocount on IF @REVINTSEQUENCE_I_RS IS NULL BEGIN SELECT TOP 25  REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREVDEF ORDER BY REVINTSEQUENCE_I DESC END ELSE IF @REVINTSEQUENCE_I_RS = @REVINTSEQUENCE_I_RE BEGIN SELECT TOP 25  REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREVDEF WHERE REVINTSEQUENCE_I = @REVINTSEQUENCE_I_RS ORDER BY REVINTSEQUENCE_I DESC END ELSE BEGIN SELECT TOP 25  REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREVDEF WHERE REVINTSEQUENCE_I BETWEEN @REVINTSEQUENCE_I_RS AND @REVINTSEQUENCE_I_RE ORDER BY REVINTSEQUENCE_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREVDEFL_1] TO [DYNGRP]
GO
