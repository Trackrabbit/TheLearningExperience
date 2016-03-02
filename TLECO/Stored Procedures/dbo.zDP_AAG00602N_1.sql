SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00602N_1] (@BS int, @aaTreeID int, @aaMstrID int, @aaTreeID_RS int, @aaMstrID_RS int, @aaTreeID_RE int, @aaMstrID_RE int) AS  set nocount on IF @aaTreeID_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaMstrID, DEX_ROW_ID FROM .AAG00602 WHERE ( aaTreeID = @aaTreeID AND aaMstrID > @aaMstrID OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaMstrID ASC END ELSE IF @aaTreeID_RS = @aaTreeID_RE BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaMstrID, DEX_ROW_ID FROM .AAG00602 WHERE aaTreeID = @aaTreeID_RS AND aaMstrID BETWEEN @aaMstrID_RS AND @aaMstrID_RE AND ( aaTreeID = @aaTreeID AND aaMstrID > @aaMstrID OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaMstrID ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaMstrID, DEX_ROW_ID FROM .AAG00602 WHERE aaTreeID BETWEEN @aaTreeID_RS AND @aaTreeID_RE AND aaMstrID BETWEEN @aaMstrID_RS AND @aaMstrID_RE AND ( aaTreeID = @aaTreeID AND aaMstrID > @aaMstrID OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaMstrID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00602N_1] TO [DYNGRP]
GO
