SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00406SS_2] (@aaTrxDimID int, @aaRelTrxDimID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID, DEX_ROW_ID FROM .AAG00406 WHERE aaTrxDimID = @aaTrxDimID AND aaRelTrxDimID = @aaRelTrxDimID ORDER BY aaTrxDimID ASC, aaRelTrxDimID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00406SS_2] TO [DYNGRP]
GO
