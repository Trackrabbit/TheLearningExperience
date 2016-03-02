SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00901SS_2] (@aaBudgetTreeID int, @aaOrder int, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaBudgetTreeID, aaTrxDimID, aaOrder, aaSelectOpt, aaTrxDimCodeFr, aaTrxDimCodeTo, DEX_ROW_ID FROM .AAG00901 WHERE aaBudgetTreeID = @aaBudgetTreeID AND aaOrder = @aaOrder AND aaTrxDimID = @aaTrxDimID ORDER BY aaBudgetTreeID ASC, aaOrder ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00901SS_2] TO [DYNGRP]
GO
