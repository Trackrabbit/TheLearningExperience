SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00403L_2] (@aaTrxDimID_RS int, @aaTrxDimCodeBool_RS tinyint, @aaTrxDimID_RE int, @aaTrxDimCodeBool_RE tinyint) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool, DEX_ROW_ID FROM .AAG00403 ORDER BY aaTrxDimID DESC, aaTrxDimCodeBool DESC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool, DEX_ROW_ID FROM .AAG00403 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeBool BETWEEN @aaTrxDimCodeBool_RS AND @aaTrxDimCodeBool_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeBool DESC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool, DEX_ROW_ID FROM .AAG00403 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeBool BETWEEN @aaTrxDimCodeBool_RS AND @aaTrxDimCodeBool_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeBool DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00403L_2] TO [DYNGRP]
GO
