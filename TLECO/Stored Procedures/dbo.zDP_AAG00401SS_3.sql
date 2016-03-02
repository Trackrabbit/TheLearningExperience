SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401SS_3] (@aaTrxDimID int, @aaTrxDimCodeDescr char(51)) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00401 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeDescr = @aaTrxDimCodeDescr ORDER BY aaTrxDimID ASC, aaTrxDimCodeDescr ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401SS_3] TO [DYNGRP]
GO
