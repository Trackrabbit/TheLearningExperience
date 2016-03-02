SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00303N_2] (@BS int, @aaDistrQueryID int, @aaOrder int, @aaDistrQueryID_RS int, @aaOrder_RS int, @aaDistrQueryID_RE int, @aaOrder_RE int) AS  set nocount on IF @aaDistrQueryID_RS IS NULL BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, aaSortOrder, DEX_ROW_ID FROM .AAG00303 WHERE ( aaDistrQueryID = @aaDistrQueryID AND aaOrder > @aaOrder OR aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC, aaOrder ASC END ELSE IF @aaDistrQueryID_RS = @aaDistrQueryID_RE BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, aaSortOrder, DEX_ROW_ID FROM .AAG00303 WHERE aaDistrQueryID = @aaDistrQueryID_RS AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE AND ( aaDistrQueryID = @aaDistrQueryID AND aaOrder > @aaOrder OR aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC, aaOrder ASC END ELSE BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, aaSortOrder, DEX_ROW_ID FROM .AAG00303 WHERE aaDistrQueryID BETWEEN @aaDistrQueryID_RS AND @aaDistrQueryID_RE AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE AND ( aaDistrQueryID = @aaDistrQueryID AND aaOrder > @aaOrder OR aaDistrQueryID > @aaDistrQueryID ) ORDER BY aaDistrQueryID ASC, aaOrder ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00303N_2] TO [DYNGRP]
GO
