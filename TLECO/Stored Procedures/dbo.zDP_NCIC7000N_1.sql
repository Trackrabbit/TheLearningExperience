SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC7000N_1] (@BS int, @JRNENTRY int, @JRNENTRY_RS int, @JRNENTRY_RE int) AS /* 14.00.0084.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, REFRENCE, DEX_ROW_ID FROM .NCIC7000 WHERE ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  JRNENTRY, REFRENCE, DEX_ROW_ID FROM .NCIC7000 WHERE JRNENTRY = @JRNENTRY_RS AND ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC END ELSE BEGIN SELECT TOP 25  JRNENTRY, REFRENCE, DEX_ROW_ID FROM .NCIC7000 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC7000N_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC7000N_1] TO [public]
GO