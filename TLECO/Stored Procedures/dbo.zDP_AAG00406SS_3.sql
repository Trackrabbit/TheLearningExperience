SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00406SS_3] (@aaRelTrxDimID int, @aaRelTrxDimCodeID int, @aaTrxDimID int, @aaTrxDimCodeID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaRelTrxDimID = @aaRelTrxDimID AND aaRelTrxDimCodeID = @aaRelTrxDimCodeID AND aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID = @aaTrxDimCodeID ORDER BY aaRelTrxDimID ASC, aaRelTrxDimCodeID ASC, aaTrxDimID ASC, aaTrxDimCodeID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00406SS_3] TO [DYNGRP]
GO
