SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG01002F_2] (@aaTrxDimID_RS int, @aaTrxDimCodeID_RS int, @aaUDFID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeID_RE int, @aaUDFID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaUDFID, aaUDFText, aaUDFDate, aaUDFNumeric, aaUDFBoolean, DEX_ROW_ID FROM .AAG01002 ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, aaUDFID ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaUDFID, aaUDFText, aaUDFDate, aaUDFNumeric, aaUDFBoolean, DEX_ROW_ID FROM .AAG01002 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND aaUDFID BETWEEN @aaUDFID_RS AND @aaUDFID_RE ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, aaUDFID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaUDFID, aaUDFText, aaUDFDate, aaUDFNumeric, aaUDFBoolean, DEX_ROW_ID FROM .AAG01002 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND aaUDFID BETWEEN @aaUDFID_RS AND @aaUDFID_RE ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, aaUDFID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG01002F_2] TO [DYNGRP]
GO
