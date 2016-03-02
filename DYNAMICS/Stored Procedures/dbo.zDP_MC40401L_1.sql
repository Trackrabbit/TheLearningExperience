SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC40401L_1] (@DENOMCURR_RS char(15), @DENOMCURR_RE char(15)) AS  set nocount on IF @DENOMCURR_RS IS NULL BEGIN SELECT TOP 25  DENOMCURR, DENXRATE, ENABLED, DEX_ROW_ID FROM .MC40401 ORDER BY DENOMCURR DESC END ELSE IF @DENOMCURR_RS = @DENOMCURR_RE BEGIN SELECT TOP 25  DENOMCURR, DENXRATE, ENABLED, DEX_ROW_ID FROM .MC40401 WHERE DENOMCURR = @DENOMCURR_RS ORDER BY DENOMCURR DESC END ELSE BEGIN SELECT TOP 25  DENOMCURR, DENXRATE, ENABLED, DEX_ROW_ID FROM .MC40401 WHERE DENOMCURR BETWEEN @DENOMCURR_RS AND @DENOMCURR_RE ORDER BY DENOMCURR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40401L_1] TO [DYNGRP]
GO