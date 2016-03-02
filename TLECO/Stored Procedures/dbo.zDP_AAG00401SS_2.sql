SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401SS_2] (@aaTrxDimID int, @aaTrxDimCode char(31)) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCode = @aaTrxDimCode ORDER BY aaTrxDimID ASC, aaTrxDimCode ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401SS_2] TO [DYNGRP]
GO
