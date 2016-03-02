SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00402N_1] (@BS int, @aaTrxDimID int, @aaTrxDimCodeNumID int, @aaTrxDimID_RS int, @aaTrxDimCodeNumID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeNumID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeNumID > @aaTrxDimCodeNumID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeNumID ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeNumID BETWEEN @aaTrxDimCodeNumID_RS AND @aaTrxDimCodeNumID_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeNumID > @aaTrxDimCodeNumID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeNumID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeNumID BETWEEN @aaTrxDimCodeNumID_RS AND @aaTrxDimCodeNumID_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeNumID > @aaTrxDimCodeNumID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeNumID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00402N_1] TO [DYNGRP]
GO
