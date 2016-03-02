SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00312SS_2] (@aaMLQueryID int, @aaOrder int, @aaColID int, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaMLQueryID, aaColID, aaTrxDimID, aaOrder, aaSubtotal, aaBudgetID, aaTotal, DEX_ROW_ID FROM .AAG00312 WHERE aaMLQueryID = @aaMLQueryID AND aaOrder = @aaOrder AND aaColID = @aaColID AND aaTrxDimID = @aaTrxDimID ORDER BY aaMLQueryID ASC, aaOrder ASC, aaColID ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00312SS_2] TO [DYNGRP]
GO
