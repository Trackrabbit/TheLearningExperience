SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00404N_2] (@BS int, @aaTrxDimID int, @aaTrxDimCodeDate datetime, @aaTrxDimID_RS int, @aaTrxDimCodeDate_RS datetime, @aaTrxDimID_RE int, @aaTrxDimCodeDate_RE datetime) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDate > @aaTrxDimCodeDate OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeDate ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeDate BETWEEN @aaTrxDimCodeDate_RS AND @aaTrxDimCodeDate_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDate > @aaTrxDimCodeDate OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeDate ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeDate BETWEEN @aaTrxDimCodeDate_RS AND @aaTrxDimCodeDate_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDate > @aaTrxDimCodeDate OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeDate ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00404N_2] TO [DYNGRP]
GO
