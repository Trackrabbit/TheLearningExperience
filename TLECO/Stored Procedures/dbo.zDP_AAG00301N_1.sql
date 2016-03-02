SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00301N_1] (@BS int, @aaDistrQueryID int, @aaColumn smallint, @aaDistrQueryID_RS int, @aaColumn_RS smallint, @aaDistrQueryID_RE int, @aaColumn_RE smallint) AS  set nocount on IF @aaDistrQueryID_RS IS NULL BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, DEX_ROW_ID FROM .AAG00301 WHERE ( aaDistrQueryID = @aaDistrQueryID AND aaColumn > @aaColumn OR aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC, aaColumn ASC END ELSE IF @aaDistrQueryID_RS = @aaDistrQueryID_RE BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, DEX_ROW_ID FROM .AAG00301 WHERE aaDistrQueryID = @aaDistrQueryID_RS AND aaColumn BETWEEN @aaColumn_RS AND @aaColumn_RE AND ( aaDistrQueryID = @aaDistrQueryID AND aaColumn > @aaColumn OR aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC, aaColumn ASC END ELSE BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, DEX_ROW_ID FROM .AAG00301 WHERE aaDistrQueryID BETWEEN @aaDistrQueryID_RS AND @aaDistrQueryID_RE AND aaColumn BETWEEN @aaColumn_RS AND @aaColumn_RE AND ( aaDistrQueryID = @aaDistrQueryID AND aaColumn > @aaColumn OR aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC, aaColumn ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00301N_1] TO [DYNGRP]
GO
