SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00601F_3] (@aaTreeID_RS int, @aaLevel_RS int, @aaOrder_RS int, @aaTreeID_RE int, @aaLevel_RE int, @aaOrder_RE int) AS  set nocount on IF @aaTreeID_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 ORDER BY aaTreeID ASC, aaLevel ASC, aaOrder ASC, DEX_ROW_ID ASC END ELSE IF @aaTreeID_RS = @aaTreeID_RE BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 WHERE aaTreeID = @aaTreeID_RS AND aaLevel BETWEEN @aaLevel_RS AND @aaLevel_RE AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE ORDER BY aaTreeID ASC, aaLevel ASC, aaOrder ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 WHERE aaTreeID BETWEEN @aaTreeID_RS AND @aaTreeID_RE AND aaLevel BETWEEN @aaLevel_RS AND @aaLevel_RE AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE ORDER BY aaTreeID ASC, aaLevel ASC, aaOrder ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00601F_3] TO [DYNGRP]
GO
