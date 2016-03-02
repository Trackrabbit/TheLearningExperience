SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00402SS_1] (@aaTrxDimID int, @aaTrxDimCodeNumID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeNumID = @aaTrxDimCodeNumID ORDER BY aaTrxDimID ASC, aaTrxDimCodeNumID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00402SS_1] TO [DYNGRP]
GO
