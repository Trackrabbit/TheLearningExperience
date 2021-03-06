SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC1010L_1] (@JRNENTRY_RS int, @SQNCLINE_RS numeric(19,5), @JRNENTRY_RE int, @SQNCLINE_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, REFRENCE, DEX_ROW_ID FROM .NCIC1010 ORDER BY JRNENTRY DESC, SQNCLINE DESC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, REFRENCE, DEX_ROW_ID FROM .NCIC1010 WHERE JRNENTRY = @JRNENTRY_RS AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE ORDER BY JRNENTRY DESC, SQNCLINE DESC END ELSE BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, REFRENCE, DEX_ROW_ID FROM .NCIC1010 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE ORDER BY JRNENTRY DESC, SQNCLINE DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1010L_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1010L_1] TO [public]
GO
