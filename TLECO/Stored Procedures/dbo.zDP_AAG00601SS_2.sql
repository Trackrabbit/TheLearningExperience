SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00601SS_2] (@aaTreeID int, @aaNode char(51)) AS  set nocount on SELECT TOP 1  aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, DEX_ROW_ID FROM .AAG00601 WHERE aaTreeID = @aaTreeID AND aaNode = @aaNode ORDER BY aaTreeID ASC, aaNode ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00601SS_2] TO [DYNGRP]
GO
