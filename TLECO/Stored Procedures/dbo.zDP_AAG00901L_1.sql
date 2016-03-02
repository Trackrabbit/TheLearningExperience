SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00901L_1] (@aaBudgetTreeID_RS int, @aaTrxDimID_RS int, @aaBudgetTreeID_RE int, @aaTrxDimID_RE int) AS  set nocount on IF @aaBudgetTreeID_RS IS NULL BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimID, aaOrder, aaSelectOpt, aaTrxDimCodeFr, aaTrxDimCodeTo, DEX_ROW_ID FROM .AAG00901 ORDER BY aaBudgetTreeID DESC, aaTrxDimID DESC END ELSE IF @aaBudgetTreeID_RS = @aaBudgetTreeID_RE BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimID, aaOrder, aaSelectOpt, aaTrxDimCodeFr, aaTrxDimCodeTo, DEX_ROW_ID FROM .AAG00901 WHERE aaBudgetTreeID = @aaBudgetTreeID_RS AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaBudgetTreeID DESC, aaTrxDimID DESC END ELSE BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimID, aaOrder, aaSelectOpt, aaTrxDimCodeFr, aaTrxDimCodeTo, DEX_ROW_ID FROM .AAG00901 WHERE aaBudgetTreeID BETWEEN @aaBudgetTreeID_RS AND @aaBudgetTreeID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaBudgetTreeID DESC, aaTrxDimID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00901L_1] TO [DYNGRP]
GO
