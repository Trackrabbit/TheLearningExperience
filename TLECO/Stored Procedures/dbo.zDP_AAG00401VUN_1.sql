SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401VUN_1] (@BS int, @aaTrxDimID int, @aaTrxDimCodeID int, @aaTrxDimID_RS int, @aaTrxDimCodeID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaNode, DEX_ROW_ID FROM .AAG00401V WHERE ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID > @aaTrxDimCodeID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, DEX_ROW_ID ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaNode, DEX_ROW_ID FROM .AAG00401V WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID > @aaTrxDimCodeID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaNode, DEX_ROW_ID FROM .AAG00401V WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID > @aaTrxDimCodeID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401VUN_1] TO [DYNGRP]
GO
