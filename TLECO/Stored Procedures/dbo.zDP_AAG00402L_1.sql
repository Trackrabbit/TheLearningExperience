SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00402L_1] (@aaTrxDimID_RS int, @aaTrxDimCodeNumID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeNumID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 ORDER BY aaTrxDimID DESC, aaTrxDimCodeNumID DESC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeNumID BETWEEN @aaTrxDimCodeNumID_RS AND @aaTrxDimCodeNumID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeNumID DESC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeNumID BETWEEN @aaTrxDimCodeNumID_RS AND @aaTrxDimCodeNumID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeNumID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00402L_1] TO [DYNGRP]
GO
