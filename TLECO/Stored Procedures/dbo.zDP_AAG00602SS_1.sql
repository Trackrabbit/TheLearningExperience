SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00602SS_1] (@aaTreeID int, @aaMstrID int) AS  set nocount on SELECT TOP 1  aaTreeID, aaNodeID, aaMstrID, DEX_ROW_ID FROM .AAG00602 WHERE aaTreeID = @aaTreeID AND aaMstrID = @aaMstrID ORDER BY aaTreeID ASC, aaMstrID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00602SS_1] TO [DYNGRP]
GO
