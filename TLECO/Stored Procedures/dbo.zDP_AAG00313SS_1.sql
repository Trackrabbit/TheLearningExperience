SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00313SS_1] (@aaMLQueryID int, @aaColumn smallint) AS  set nocount on SELECT TOP 1  aaMLQueryID, aaColumn, DEX_ROW_ID FROM .AAG00313 WHERE aaMLQueryID = @aaMLQueryID AND aaColumn = @aaColumn ORDER BY aaMLQueryID ASC, aaColumn ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00313SS_1] TO [DYNGRP]
GO
