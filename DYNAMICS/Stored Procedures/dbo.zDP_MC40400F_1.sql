SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC40400F_1] (@Euro_Currency_ID_RS char(15), @Euro_Currency_ID_RE char(15)) AS  set nocount on IF @Euro_Currency_ID_RS IS NULL BEGIN SELECT TOP 25  Euro_Currency_ID, DEX_ROW_ID FROM .MC40400 ORDER BY Euro_Currency_ID ASC END ELSE IF @Euro_Currency_ID_RS = @Euro_Currency_ID_RE BEGIN SELECT TOP 25  Euro_Currency_ID, DEX_ROW_ID FROM .MC40400 WHERE Euro_Currency_ID = @Euro_Currency_ID_RS ORDER BY Euro_Currency_ID ASC END ELSE BEGIN SELECT TOP 25  Euro_Currency_ID, DEX_ROW_ID FROM .MC40400 WHERE Euro_Currency_ID BETWEEN @Euro_Currency_ID_RS AND @Euro_Currency_ID_RE ORDER BY Euro_Currency_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40400F_1] TO [DYNGRP]
GO
