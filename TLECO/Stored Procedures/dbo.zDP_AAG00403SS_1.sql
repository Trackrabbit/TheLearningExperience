SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00403SS_1] (@aaTrxDimID int, @aaTrxDimCodeBoolID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool, DEX_ROW_ID FROM .AAG00403 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeBoolID = @aaTrxDimCodeBoolID ORDER BY aaTrxDimID ASC, aaTrxDimCodeBoolID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00403SS_1] TO [DYNGRP]
GO
