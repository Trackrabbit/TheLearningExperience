SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00312SS_1] (@aaMLQueryID int, @aaColID int, @aaOrder int, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaMLQueryID, aaColID, aaTrxDimID, aaOrder, aaSubtotal, aaBudgetID, aaTotal, DEX_ROW_ID FROM .AAG00312 WHERE aaMLQueryID = @aaMLQueryID AND aaColID = @aaColID AND aaOrder = @aaOrder AND aaTrxDimID = @aaTrxDimID ORDER BY aaMLQueryID ASC, aaColID ASC, aaOrder ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00312SS_1] TO [DYNGRP]
GO
