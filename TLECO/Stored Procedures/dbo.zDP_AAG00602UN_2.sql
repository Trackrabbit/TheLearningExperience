SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00602UN_2] (@BS int, @aaTreeID int, @aaNodeID int, @aaTreeID_RS int, @aaNodeID_RS int, @aaTreeID_RE int, @aaNodeID_RE int) AS  set nocount on IF @aaTreeID_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaMstrID, DEX_ROW_ID FROM .AAG00602 WHERE ( aaTreeID = @aaTreeID AND aaNodeID > @aaNodeID OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaNodeID ASC, DEX_ROW_ID ASC END ELSE IF @aaTreeID_RS = @aaTreeID_RE BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaMstrID, DEX_ROW_ID FROM .AAG00602 WHERE aaTreeID = @aaTreeID_RS AND aaNodeID BETWEEN @aaNodeID_RS AND @aaNodeID_RE AND ( aaTreeID = @aaTreeID AND aaNodeID > @aaNodeID OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaNodeID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaMstrID, DEX_ROW_ID FROM .AAG00602 WHERE aaTreeID BETWEEN @aaTreeID_RS AND @aaTreeID_RE AND aaNodeID BETWEEN @aaNodeID_RS AND @aaNodeID_RE AND ( aaTreeID = @aaTreeID AND aaNodeID > @aaNodeID OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaNodeID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00602UN_2] TO [DYNGRP]
GO
