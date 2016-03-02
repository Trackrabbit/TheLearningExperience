SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27624F_1] (@PMNTNMBR_RS char(21), @PMNTNMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @PMNTNMBR_RS IS NULL BEGIN SELECT TOP 25  PMNTNMBR, ADRSCODE, DEX_ROW_ID FROM .ME27624 ORDER BY PMNTNMBR ASC END ELSE IF @PMNTNMBR_RS = @PMNTNMBR_RE BEGIN SELECT TOP 25  PMNTNMBR, ADRSCODE, DEX_ROW_ID FROM .ME27624 WHERE PMNTNMBR = @PMNTNMBR_RS ORDER BY PMNTNMBR ASC END ELSE BEGIN SELECT TOP 25  PMNTNMBR, ADRSCODE, DEX_ROW_ID FROM .ME27624 WHERE PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE ORDER BY PMNTNMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27624F_1] TO [DYNGRP]
GO