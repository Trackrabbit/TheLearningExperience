SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00301SS_1] (@aaDistrQueryID int, @aaColumn smallint) AS  set nocount on SELECT TOP 1  aaDistrQueryID, aaColumn, aaOrder, DEX_ROW_ID FROM .AAG00301 WHERE aaDistrQueryID = @aaDistrQueryID AND aaColumn = @aaColumn ORDER BY aaDistrQueryID ASC, aaColumn ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00301SS_1] TO [DYNGRP]
GO