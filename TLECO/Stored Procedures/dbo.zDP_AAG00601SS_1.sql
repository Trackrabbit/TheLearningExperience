SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00601SS_1] (@aaTreeID int, @aaNodeID int) AS  set nocount on SELECT TOP 1  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 WHERE aaTreeID = @aaTreeID AND aaNodeID = @aaNodeID ORDER BY aaTreeID ASC, aaNodeID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00601SS_1] TO [DYNGRP]
GO
