SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00403SS_2] (@aaTrxDimID int, @aaTrxDimCodeBool tinyint) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool, DEX_ROW_ID FROM .AAG00403 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeBool = @aaTrxDimCodeBool ORDER BY aaTrxDimID ASC, aaTrxDimCodeBool ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00403SS_2] TO [DYNGRP]
GO
