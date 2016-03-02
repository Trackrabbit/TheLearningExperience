SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00500SS_1] (@aaDateID int) AS  set nocount on SELECT TOP 1  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 WHERE aaDateID = @aaDateID ORDER BY aaDateID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00500SS_1] TO [DYNGRP]
GO
