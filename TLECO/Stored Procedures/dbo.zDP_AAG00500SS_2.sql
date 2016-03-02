SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00500SS_2] (@DATE1 datetime, @aaDateID int) AS  set nocount on SELECT TOP 1  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 WHERE DATE1 = @DATE1 AND aaDateID = @aaDateID ORDER BY DATE1 ASC, aaDateID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00500SS_2] TO [DYNGRP]
GO
