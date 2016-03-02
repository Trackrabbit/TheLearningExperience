SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00602SS_2] (@aaTreeID int, @aaNodeID int) AS  set nocount on SELECT TOP 1  aaTreeID, aaNodeID, aaMstrID, DEX_ROW_ID FROM .AAG00602 WHERE aaTreeID = @aaTreeID AND aaNodeID = @aaNodeID ORDER BY aaTreeID ASC, aaNodeID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00602SS_2] TO [DYNGRP]
GO
