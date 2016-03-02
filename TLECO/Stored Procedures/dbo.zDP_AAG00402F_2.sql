SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00402F_2] (@aaTrxDimID_RS int, @aaTrxDimCodeNum_RS numeric(19,5), @aaTrxDimID_RE int, @aaTrxDimCodeNum_RE numeric(19,5)) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 ORDER BY aaTrxDimID ASC, aaTrxDimCodeNum ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeNum BETWEEN @aaTrxDimCodeNum_RS AND @aaTrxDimCodeNum_RE ORDER BY aaTrxDimID ASC, aaTrxDimCodeNum ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeNum BETWEEN @aaTrxDimCodeNum_RS AND @aaTrxDimCodeNum_RE ORDER BY aaTrxDimID ASC, aaTrxDimCodeNum ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00402F_2] TO [DYNGRP]
GO
