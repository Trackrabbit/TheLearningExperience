SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00405L_1] (@aaTrxDimID_RS int, @aaRelTrxDimID_RS int, @aaTrxDimID_RE int, @aaRelTrxDimID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 ORDER BY aaTrxDimID DESC, aaRelTrxDimID DESC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE ORDER BY aaTrxDimID DESC, aaRelTrxDimID DESC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE ORDER BY aaTrxDimID DESC, aaRelTrxDimID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00405L_1] TO [DYNGRP]
GO
