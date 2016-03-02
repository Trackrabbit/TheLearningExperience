SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00403L_1] (@aaTrxDimID_RS int, @aaTrxDimCodeBoolID_RS int, @aaTrxDimID_RE int, @aaTrxDimCodeBoolID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool, DEX_ROW_ID FROM .AAG00403 ORDER BY aaTrxDimID DESC, aaTrxDimCodeBoolID DESC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool, DEX_ROW_ID FROM .AAG00403 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeBoolID BETWEEN @aaTrxDimCodeBoolID_RS AND @aaTrxDimCodeBoolID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeBoolID DESC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool, DEX_ROW_ID FROM .AAG00403 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeBoolID BETWEEN @aaTrxDimCodeBoolID_RS AND @aaTrxDimCodeBoolID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeBoolID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00403L_1] TO [DYNGRP]
GO
