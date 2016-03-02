SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01100L_1] (@SERIES_RS smallint, @SEQNUMBR_RS int, @SERIES_RE smallint, @SEQNUMBR_RE int) AS  set nocount on IF @SERIES_RS IS NULL BEGIN SELECT TOP 25  SERIES, SEQNUMBR, ACTINDX, PTGACDSC, DEX_ROW_ID FROM .SY01100 ORDER BY SERIES DESC, SEQNUMBR DESC END ELSE IF @SERIES_RS = @SERIES_RE BEGIN SELECT TOP 25  SERIES, SEQNUMBR, ACTINDX, PTGACDSC, DEX_ROW_ID FROM .SY01100 WHERE SERIES = @SERIES_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SERIES DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  SERIES, SEQNUMBR, ACTINDX, PTGACDSC, DEX_ROW_ID FROM .SY01100 WHERE SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SERIES DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01100L_1] TO [DYNGRP]
GO
