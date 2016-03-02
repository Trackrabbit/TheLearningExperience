SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00316SS_1] (@aaMLQueryID int, @aaTrxDimID int, @aaUDFID int) AS  set nocount on SELECT TOP 1  aaMLQueryID, aaTrxDimID, aaUDFID, aaUDFSelect, DEX_ROW_ID FROM .AAG00316 WHERE aaMLQueryID = @aaMLQueryID AND aaTrxDimID = @aaTrxDimID AND aaUDFID = @aaUDFID ORDER BY aaMLQueryID ASC, aaTrxDimID ASC, aaUDFID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00316SS_1] TO [DYNGRP]
GO
