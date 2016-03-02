SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00402SS_2] (@aaTrxDimID int, @aaTrxDimCodeNum numeric(19,5)) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum, DEX_ROW_ID FROM .AAG00402 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeNum = @aaTrxDimCodeNum ORDER BY aaTrxDimID ASC, aaTrxDimCodeNum ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00402SS_2] TO [DYNGRP]
GO
