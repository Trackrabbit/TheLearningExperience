SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00404SS_2] (@aaTrxDimID int, @aaTrxDimCodeDate datetime) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDate = @aaTrxDimCodeDate ORDER BY aaTrxDimID ASC, aaTrxDimCodeDate ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00404SS_2] TO [DYNGRP]
GO
