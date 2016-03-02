SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00405F_2] (@aaTrxDimRelType_RS smallint, @aaTrxDimID_RS int, @aaRelTrxDimID_RS int, @aaTrxDimRelType_RE smallint, @aaTrxDimID_RE int, @aaRelTrxDimID_RE int) AS  set nocount on IF @aaTrxDimRelType_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 ORDER BY aaTrxDimRelType ASC, aaTrxDimID ASC, aaRelTrxDimID ASC END ELSE IF @aaTrxDimRelType_RS = @aaTrxDimRelType_RE BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 WHERE aaTrxDimRelType = @aaTrxDimRelType_RS AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE ORDER BY aaTrxDimRelType ASC, aaTrxDimID ASC, aaRelTrxDimID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 WHERE aaTrxDimRelType BETWEEN @aaTrxDimRelType_RS AND @aaTrxDimRelType_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaRelTrxDimID BETWEEN @aaRelTrxDimID_RS AND @aaRelTrxDimID_RE ORDER BY aaTrxDimRelType ASC, aaTrxDimID ASC, aaRelTrxDimID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00405F_2] TO [DYNGRP]
GO
