SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG01002SS_1] (@aaUDFID int, @aaTrxDimID int, @aaTrxDimCodeID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeID, aaUDFID, aaUDFText, aaUDFDate, aaUDFNumeric, aaUDFBoolean, DEX_ROW_ID FROM .AAG01002 WHERE aaUDFID = @aaUDFID AND aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID = @aaTrxDimCodeID ORDER BY aaUDFID ASC, aaTrxDimID ASC, aaTrxDimCodeID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG01002SS_1] TO [DYNGRP]
GO
