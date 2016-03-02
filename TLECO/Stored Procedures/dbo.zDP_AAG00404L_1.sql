SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00404L_1] (@aaTrxDimID_RS int, @aaTrxDimCodeDateID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeDateID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 ORDER BY aaTrxDimID DESC, aaTrxDimCodeDateID DESC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeDateID BETWEEN @aaTrxDimCodeDateID_RS AND @aaTrxDimCodeDateID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeDateID DESC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeDateID BETWEEN @aaTrxDimCodeDateID_RS AND @aaTrxDimCodeDateID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeDateID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00404L_1] TO [DYNGRP]
GO
