SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00406F_3] (@aaRelTrxDimID_RS int, @aaRelTrxDimCodeID_RS int, @aaTrxDimID_RS int, @aaTrxDimCodeID_RS int, @aaRelTrxDimID_RE int, @aaRelTrxDimCodeID_RE int, @aaTrxDimID_RE int, @aaTrxDimCodeID_RE int) AS  set nocount on IF @aaRelTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 ORDER BY aaRelTrxDimID ASC, aaRelTrxDimCodeID ASC, aaTrxDimID ASC, aaTrxDimCodeID ASC END ELSE IF @aaRelTrxDimID_RS = @aaRelTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaRelTrxDimID = @aaRelTrxDimID_RS AND aaRelTrxDimCodeID BETWEEN @aaRelTrxDimCodeID_RS AND @aaRelTrxDimCodeID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE ORDER BY aaRelTrxDimID ASC, aaRelTrxDimCodeID ASC, aaTrxDimID ASC, aaTrxDimCodeID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE AND aaRelTrxDimCodeID BETWEEN @aaRelTrxDimCodeID_RS AND @aaRelTrxDimCodeID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE ORDER BY aaRelTrxDimID ASC, aaRelTrxDimCodeID ASC, aaTrxDimID ASC, aaTrxDimCodeID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00406F_3] TO [DYNGRP]
GO
