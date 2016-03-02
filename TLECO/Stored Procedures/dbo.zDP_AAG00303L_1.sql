SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00303L_1] (@aaDistrQueryID_RS int, @aaColumn_RS smallint, @aaDistrQueryID_RE int, @aaColumn_RE smallint) AS  set nocount on IF @aaDistrQueryID_RS IS NULL BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, aaSortOrder, DEX_ROW_ID FROM .AAG00303 ORDER BY aaDistrQueryID DESC, aaColumn DESC END ELSE IF @aaDistrQueryID_RS = @aaDistrQueryID_RE BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, aaSortOrder, DEX_ROW_ID FROM .AAG00303 WHERE aaDistrQueryID = @aaDistrQueryID_RS AND aaColumn BETWEEN @aaColumn_RS AND @aaColumn_RE ORDER BY aaDistrQueryID DESC, aaColumn DESC END ELSE BEGIN SELECT TOP 25  aaDistrQueryID, aaColumn, aaOrder, aaSortOrder, DEX_ROW_ID FROM .AAG00303 WHERE aaDistrQueryID BETWEEN @aaDistrQueryID_RS AND @aaDistrQueryID_RE AND aaColumn BETWEEN @aaColumn_RS AND @aaColumn_RE ORDER BY aaDistrQueryID DESC, aaColumn DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00303L_1] TO [DYNGRP]
GO
