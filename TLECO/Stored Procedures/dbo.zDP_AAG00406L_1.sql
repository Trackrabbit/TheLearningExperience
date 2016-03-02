SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00406L_1] (@aaTrxDimID_RS int, @aaTrxDimCodeID_RS int, @aaRelTrxDimID_RS int, @aaRelTrxDimCodeID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeID_RE int, @aaRelTrxDimID_RE int, @aaRelTrxDimCodeID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 ORDER BY aaTrxDimID DESC, aaTrxDimCodeID DESC, aaRelTrxDimID DESC, aaRelTrxDimCodeID DESC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE AND aaRelTrxDimCodeID BETWEEN @aaRelTrxDimCodeID_RS AND @aaRelTrxDimCodeID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeID DESC, aaRelTrxDimID DESC, aaRelTrxDimCodeID DESC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE AND aaRelTrxDimCodeID BETWEEN @aaRelTrxDimCodeID_RS AND @aaRelTrxDimCodeID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeID DESC, aaRelTrxDimID DESC, aaRelTrxDimCodeID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00406L_1] TO [DYNGRP]
GO
