SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00405F_3] (@aaTrxDimID_RS int, @aaTrxDimRelType_RS smallint, @aaTrxDimID_RE int, @aaTrxDimRelType_RE smallint) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 ORDER BY aaTrxDimID ASC, aaTrxDimRelType ASC, DEX_ROW_ID ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimRelType BETWEEN @aaTrxDimRelType_RS AND @aaTrxDimRelType_RE ORDER BY aaTrxDimID ASC, aaTrxDimRelType ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimRelType BETWEEN @aaTrxDimRelType_RS AND @aaTrxDimRelType_RE ORDER BY aaTrxDimID ASC, aaTrxDimRelType ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00405F_3] TO [DYNGRP]
GO
