SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401N_2] (@BS int, @aaTrxDimID int, @aaTrxDimCode char(31), @aaTrxDimID_RS int, @aaTrxDimCode_RS char(31), @aaTrxDimID_RE int, @aaTrxDimCode_RE char(31)) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCode > @aaTrxDimCode OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCode ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCode BETWEEN @aaTrxDimCode_RS AND @aaTrxDimCode_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCode > @aaTrxDimCode OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCode ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCode BETWEEN @aaTrxDimCode_RS AND @aaTrxDimCode_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCode > @aaTrxDimCode OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCode ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401N_2] TO [DYNGRP]
GO
