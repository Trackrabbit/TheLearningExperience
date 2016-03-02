SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00801F_1] (@aaAliasID_RS int, @aaTrxDimID_RS int, @aaAliasID_RE int, @aaTrxDimID_RE int) AS  set nocount on IF @aaAliasID_RS IS NULL BEGIN SELECT TOP 25  aaAliasID, aaTrxDimID, aaTrxDimCodeID, DEX_ROW_ID FROM .AAG00801 ORDER BY aaAliasID ASC, aaTrxDimID ASC END ELSE IF @aaAliasID_RS = @aaAliasID_RE BEGIN SELECT TOP 25  aaAliasID, aaTrxDimID, aaTrxDimCodeID, DEX_ROW_ID FROM .AAG00801 WHERE aaAliasID = @aaAliasID_RS AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaAliasID ASC, aaTrxDimID ASC END ELSE BEGIN SELECT TOP 25  aaAliasID, aaTrxDimID, aaTrxDimCodeID, DEX_ROW_ID FROM .AAG00801 WHERE aaAliasID BETWEEN @aaAliasID_RS AND @aaAliasID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaAliasID ASC, aaTrxDimID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00801F_1] TO [DYNGRP]
GO