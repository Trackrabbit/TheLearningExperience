SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401L_3] (@aaTrxDimID_RS int, @aaTrxDimCodeDescr_RS char(51), @aaTrxDimID_RE int, @aaTrxDimCodeDescr_RE char(51)) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 ORDER BY aaTrxDimID DESC, aaTrxDimCodeDescr DESC, DEX_ROW_ID DESC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeDescr BETWEEN @aaTrxDimCodeDescr_RS AND @aaTrxDimCodeDescr_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeDescr DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeDescr BETWEEN @aaTrxDimCodeDescr_RS AND @aaTrxDimCodeDescr_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeDescr DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401L_3] TO [DYNGRP]
GO
