SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00406SS_1] (@aaTrxDimID int, @aaTrxDimCodeID int, @aaRelTrxDimID int, @aaRelTrxDimCodeID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID = @aaTrxDimCodeID AND aaRelTrxDimID = @aaRelTrxDimID AND aaRelTrxDimCodeID = @aaRelTrxDimCodeID ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, aaRelTrxDimID ASC, aaRelTrxDimCodeID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00406SS_1] TO [DYNGRP]
GO
