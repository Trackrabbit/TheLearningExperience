SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00406UN_2] (@BS int, @aaTrxDimID int, @aaRelTrxDimID int, @aaTrxDimID_RS int, @aaRelTrxDimID_RS int, @aaTrxDimID_RE int, @aaRelTrxDimID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE ( aaTrxDimID = @aaTrxDimID AND aaRelTrxDimID > @aaRelTrxDimID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaRelTrxDimID ASC, DEX_ROW_ID ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE AND ( aaTrxDimID = @aaTrxDimID AND aaRelTrxDimID > @aaRelTrxDimID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaRelTrxDimID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE AND ( aaTrxDimID = @aaTrxDimID AND aaRelTrxDimID > @aaRelTrxDimID OR aaTrxDimID > @aaTrxDimID ) ORDER BY aaTrxDimID ASC, aaRelTrxDimID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00406UN_2] TO [DYNGRP]
GO
