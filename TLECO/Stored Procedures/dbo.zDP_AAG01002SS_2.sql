SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG01002SS_2] (@aaTrxDimID int, @aaTrxDimCodeID int, @aaUDFID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeID, aaUDFID, aaUDFText, aaUDFDate, aaUDFNumeric, aaUDFBoolean, DEX_ROW_ID FROM .AAG01002 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID = @aaTrxDimCodeID AND aaUDFID = @aaUDFID ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, aaUDFID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG01002SS_2] TO [DYNGRP]
GO
