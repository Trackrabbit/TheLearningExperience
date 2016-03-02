SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00301L_2] (@aaDistrQueryID_RS int, @aaOrder_RS int, @aaDistrQueryID_RE int, @aaOrder_RE int) AS  set nocount on IF @aaDistrQueryID_RS IS NULL BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, DEX_ROW_ID FROM .AAG00301 ORDER BY aaDistrQueryID DESC, aaOrder DESC END ELSE IF @aaDistrQueryID_RS = @aaDistrQueryID_RE BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, DEX_ROW_ID FROM .AAG00301 WHERE aaDistrQueryID = @aaDistrQueryID_RS AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE ORDER BY aaDistrQueryID DESC, aaOrder DESC END ELSE BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, DEX_ROW_ID FROM .AAG00301 WHERE aaDistrQueryID BETWEEN @aaDistrQueryID_RS AND @aaDistrQueryID_RE AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE ORDER BY aaDistrQueryID DESC, aaOrder DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00301L_2] TO [DYNGRP]
GO
