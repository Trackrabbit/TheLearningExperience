SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00601SS_3] (@aaTreeID int, @aaLevel int, @aaOrder int) AS  set nocount on SELECT TOP 1  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 WHERE aaTreeID = @aaTreeID AND aaLevel = @aaLevel AND aaOrder = @aaOrder ORDER BY aaTreeID ASC, aaLevel ASC, aaOrder ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00601SS_3] TO [DYNGRP]
GO
