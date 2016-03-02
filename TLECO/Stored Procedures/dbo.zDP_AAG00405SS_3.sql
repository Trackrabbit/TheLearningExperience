SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00405SS_3] (@aaTrxDimID int, @aaTrxDimRelType smallint) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimRelType = @aaTrxDimRelType ORDER BY aaTrxDimID ASC, aaTrxDimRelType ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00405SS_3] TO [DYNGRP]
GO
