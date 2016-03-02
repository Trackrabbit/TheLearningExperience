SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00601UN_2] (@BS int, @aaTreeID int, @aaNode char(51), @aaTreeID_RS int, @aaNode_RS char(51), @aaTreeID_RE int, @aaNode_RE char(51)) AS  set nocount on IF @aaTreeID_RS IS NULL BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 WHERE ( aaTreeID = @aaTreeID AND aaNode > @aaNode OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaNode ASC, DEX_ROW_ID ASC END ELSE IF @aaTreeID_RS = @aaTreeID_RE BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 WHERE aaTreeID = @aaTreeID_RS AND aaNode BETWEEN @aaNode_RS AND @aaNode_RE AND ( aaTreeID = @aaTreeID AND aaNode > @aaNode OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaNode ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 WHERE aaTreeID BETWEEN @aaTreeID_RS AND @aaTreeID_RE AND aaNode BETWEEN @aaNode_RS AND @aaNode_RE AND ( aaTreeID = @aaTreeID AND aaNode > @aaNode OR aaTreeID > @aaTreeID ) ORDER BY aaTreeID ASC, aaNode ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00601UN_2] TO [DYNGRP]
GO
