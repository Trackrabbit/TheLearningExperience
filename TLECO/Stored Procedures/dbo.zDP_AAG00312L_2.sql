SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00312L_2] (@aaMLQueryID_RS int, @aaOrder_RS int, @aaColID_RS int, @aaTrxDimID_RS int, @aaMLQueryID_RE int, @aaOrder_RE int, @aaColID_RE int, @aaTrxDimID_RE int) AS  set nocount on IF @aaMLQueryID_RS IS NULL BEGIN SELECT TOP 25  aaMLQueryID, aaColID, aaTrxDimID, aaOrder, aaSubtotal, aaBudgetID, aaTotal, DEX_ROW_ID FROM .AAG00312 ORDER BY aaMLQueryID DESC, aaOrder DESC, aaColID DESC, aaTrxDimID DESC END ELSE IF @aaMLQueryID_RS = @aaMLQueryID_RE BEGIN SELECT TOP 25  aaMLQueryID, aaColID, aaTrxDimID, aaOrder, aaSubtotal, aaBudgetID, aaTotal, DEX_ROW_ID FROM .AAG00312 WHERE aaMLQueryID = @aaMLQueryID_RS AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE AND aaColID BETWEEN @aaColID_RS AND @aaColID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaMLQueryID DESC, aaOrder DESC, aaColID DESC, aaTrxDimID DESC END ELSE BEGIN SELECT TOP 25  aaMLQueryID, aaColID, aaTrxDimID, aaOrder, aaSubtotal, aaBudgetID, aaTotal, DEX_ROW_ID FROM .AAG00312 WHERE aaMLQueryID BETWEEN @aaMLQueryID_RS AND @aaMLQueryID_RE AND aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE AND aaColID BETWEEN @aaColID_RS AND @aaColID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaMLQueryID DESC, aaOrder DESC, aaColID DESC, aaTrxDimID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00312L_2] TO [DYNGRP]
GO
