SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00311N_1] (@BS int, @aaMLQueryID int, @aaColumn smallint, @aaMLQueryID_RS int, @aaColumn_RS smallint, @aaMLQueryID_RE int, @aaColumn_RE smallint) AS  set nocount on IF @aaMLQueryID_RS IS NULL BEGIN SELECT TOP 25  aaMLQueryID, aaColumn, aaOrder, aaTotals, aaPageBreak, aaUDFSelect, DEX_ROW_ID FROM .AAG00311 WHERE ( aaMLQueryID = @aaMLQueryID AND aaColumn > @aaColumn OR aaMLQueryID > @aaMLQueryID ) ORDER BY aaMLQueryID ASC, aaColumn ASC END ELSE IF @aaMLQueryID_RS = @aaMLQueryID_RE BEGIN SELECT TOP 25  aaMLQueryID, aaColumn, aaOrder, aaTotals, aaPageBreak, aaUDFSelect, DEX_ROW_ID FROM .AAG00311 WHERE aaMLQueryID = @aaMLQueryID_RS AND aaColumn BETWEEN @aaColumn_RS AND @aaColumn_RE AND ( aaMLQueryID = @aaMLQueryID AND aaColumn > @aaColumn OR aaMLQueryID > @aaMLQueryID ) ORDER BY aaMLQueryID ASC, aaColumn ASC END ELSE BEGIN SELECT TOP 25  aaMLQueryID, aaColumn, aaOrder, aaTotals, aaPageBreak, aaUDFSelect, DEX_ROW_ID FROM .AAG00311 WHERE aaMLQueryID BETWEEN @aaMLQueryID_RS AND @aaMLQueryID_RE AND aaColumn BETWEEN @aaColumn_RS AND @aaColumn_RE AND ( aaMLQueryID = @aaMLQueryID AND aaColumn > @aaColumn OR aaMLQueryID > @aaMLQueryID ) ORDER BY aaMLQueryID ASC, aaColumn ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00311N_1] TO [DYNGRP]
GO
