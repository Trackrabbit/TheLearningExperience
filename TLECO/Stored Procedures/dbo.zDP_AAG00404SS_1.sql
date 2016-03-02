SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00404SS_1] (@aaTrxDimID int, @aaTrxDimCodeDateID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate, DEX_ROW_ID FROM .AAG00404 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDateID = @aaTrxDimCodeDateID ORDER BY aaTrxDimID ASC, aaTrxDimCodeDateID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00404SS_1] TO [DYNGRP]
GO
