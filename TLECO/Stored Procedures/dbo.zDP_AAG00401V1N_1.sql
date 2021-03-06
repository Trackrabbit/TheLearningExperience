SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401V1N_1] (@BS int, @aaTrxDimCodeID int, @DEX_ROW_ID int, @aaTrxDimCodeID_RS int, @aaTrxDimCodeID_RE int) AS  set nocount on IF @aaTrxDimCodeID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimCodeID, aaCodeSequence, aaTrxDimCodeDescr, PRCNTAGE, DEX_ROW_ID FROM .AAG00401V1 WHERE ( aaTrxDimCodeID = @aaTrxDimCodeID AND DEX_ROW_ID > @DEX_ROW_ID OR aaTrxDimCodeID > @aaTrxDimCodeID ) ORDER BY aaTrxDimCodeID ASC, DEX_ROW_ID ASC END ELSE IF @aaTrxDimCodeID_RS = @aaTrxDimCodeID_RE BEGIN SELECT TOP 25  aaTrxDimCodeID, aaCodeSequence, aaTrxDimCodeDescr, PRCNTAGE, DEX_ROW_ID FROM .AAG00401V1 WHERE aaTrxDimCodeID = @aaTrxDimCodeID_RS AND ( aaTrxDimCodeID = @aaTrxDimCodeID AND DEX_ROW_ID > @DEX_ROW_ID OR aaTrxDimCodeID > @aaTrxDimCodeID ) ORDER BY aaTrxDimCodeID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimCodeID, aaCodeSequence, aaTrxDimCodeDescr, PRCNTAGE, DEX_ROW_ID FROM .AAG00401V1 WHERE aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND ( aaTrxDimCodeID = @aaTrxDimCodeID AND DEX_ROW_ID > @DEX_ROW_ID OR aaTrxDimCodeID > @aaTrxDimCodeID ) ORDER BY aaTrxDimCodeID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401V1N_1] TO [DYNGRP]
GO
