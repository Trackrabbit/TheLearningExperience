SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401F_1] (@aaTrxDimID_RS int, @aaTrxDimCodeID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401F_1] TO [DYNGRP]
GO
