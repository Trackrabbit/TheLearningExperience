SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401VSS_1] (@aaTrxDimID int, @aaTrxDimCodeID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeID, aaNode, DEX_ROW_ID FROM .AAG00401V WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID = @aaTrxDimCodeID ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401VSS_1] TO [DYNGRP]
GO
