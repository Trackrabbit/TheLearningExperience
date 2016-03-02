SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00301SS_2] (@aaDistrQueryID int, @aaOrder int) AS  set nocount on SELECT TOP 1  aaDistrQueryID, aaColumn, aaOrder, DEX_ROW_ID FROM .AAG00301 WHERE aaDistrQueryID = @aaDistrQueryID AND aaOrder = @aaOrder ORDER BY aaDistrQueryID ASC, aaOrder ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00301SS_2] TO [DYNGRP]
GO
