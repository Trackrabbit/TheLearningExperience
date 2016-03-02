SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00603SS_4] (@aaParentNodeID int, @aaOrder int) AS  set nocount on SELECT TOP 1  USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status, DEX_ROW_ID FROM .AAG00603 WHERE aaParentNodeID = @aaParentNodeID AND aaOrder = @aaOrder ORDER BY aaParentNodeID ASC, aaOrder ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00603SS_4] TO [DYNGRP]
GO
