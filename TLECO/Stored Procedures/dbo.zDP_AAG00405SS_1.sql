SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00405SS_1] (@aaTrxDimID int, @aaRelTrxDimID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType, DEX_ROW_ID FROM .AAG00405 WHERE aaTrxDimID = @aaTrxDimID AND aaRelTrxDimID = @aaRelTrxDimID ORDER BY aaTrxDimID ASC, aaRelTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00405SS_1] TO [DYNGRP]
GO
