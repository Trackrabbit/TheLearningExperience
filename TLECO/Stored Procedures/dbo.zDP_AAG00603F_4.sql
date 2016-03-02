SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00603F_4] (@aaParentNodeID_RS int, @aaOrder_RS int, @aaParentNodeID_RE int, @aaOrder_RE int) AS  set nocount on IF @aaParentNodeID_RS IS NULL BEGIN SELECT TOP 25  USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status, DEX_ROW_ID FROM .AAG00603 ORDER BY aaParentNodeID ASC, aaOrder ASC, DEX_ROW_ID ASC END ELSE IF @aaParentNodeID_RS = @aaParentNodeID_RE BEGIN SELECT TOP 25  USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status, DEX_ROW_ID FROM .AAG00603 WHERE aaParentNodeID = @aaParentNodeID_RS AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE ORDER BY aaParentNodeID ASC, aaOrder ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status, DEX_ROW_ID FROM .AAG00603 WHERE aaParentNodeID BETWEEN @aaParentNodeID_RS AND @aaParentNodeID_RE AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE ORDER BY aaParentNodeID ASC, aaOrder ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00603F_4] TO [DYNGRP]
GO
