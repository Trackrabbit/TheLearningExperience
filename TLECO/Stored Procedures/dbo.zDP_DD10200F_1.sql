SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD10200F_1] (@INDXLONG_RS int, @INDXLONG_RE int) AS  set nocount on IF @INDXLONG_RS IS NULL BEGIN SELECT TOP 25  INDXLONG, DDLINE, DEX_ROW_ID FROM .DD10200 ORDER BY INDXLONG ASC END ELSE IF @INDXLONG_RS = @INDXLONG_RE BEGIN SELECT TOP 25  INDXLONG, DDLINE, DEX_ROW_ID FROM .DD10200 WHERE INDXLONG = @INDXLONG_RS ORDER BY INDXLONG ASC END ELSE BEGIN SELECT TOP 25  INDXLONG, DDLINE, DEX_ROW_ID FROM .DD10200 WHERE INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY INDXLONG ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD10200F_1] TO [DYNGRP]
GO
