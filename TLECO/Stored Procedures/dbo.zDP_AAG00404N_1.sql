SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00404N_1] (@BS int, @aaTrxDimID int, @aaTrxDimCodeDateID int, @aaTrxDimID_RS int, @aaTrxDimCodeDateID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeDateID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDateID > @aaTrxDimCodeDateID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeDateID ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeDateID BETWEEN @aaTrxDimCodeDateID_RS AND @aaTrxDimCodeDateID_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDateID > @aaTrxDimCodeDateID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeDateID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeDateID BETWEEN @aaTrxDimCodeDateID_RS AND @aaTrxDimCodeDateID_RE AND ( aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDateID > @aaTrxDimCodeDateID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaTrxDimCodeDateID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00404N_1] TO [DYNGRP]
GO
