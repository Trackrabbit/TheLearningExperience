SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00313L_1] (@aaMLQueryID_RS int, @aaColumn_RS smallint, @aaMLQueryID_RE int, @aaColumn_RE smallint) AS  set nocount on IF @aaMLQueryID_RS IS NULL BEGIN SELECT TOP 25  aaMLQueryID, aaColumn, DEX_ROW_ID FROM .AAG00313 ORDER BY aaMLQueryID DESC, aaColumn DESC END ELSE IF @aaMLQueryID_RS = @aaMLQueryID_RE BEGIN SELECT TOP 25  aaMLQueryID, aaColumn, DEX_ROW_ID FROM .AAG00313 WHERE aaMLQueryID = @aaMLQueryID_RS AND aaColumn BETWEEN @aaColumn_RS AND @aaColumn_RE ORDER BY aaMLQueryID DESC, aaColumn DESC END ELSE BEGIN SELECT TOP 25  aaMLQueryID, aaColumn, DEX_ROW_ID FROM .AAG00313 WHERE aaMLQueryID BETWEEN @aaMLQueryID_RS AND @aaMLQueryID_RE AND aaColumn BETWEEN @aaColumn_RS AND @aaColumn_RE ORDER BY aaMLQueryID DESC, aaColumn DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00313L_1] TO [DYNGRP]
GO
