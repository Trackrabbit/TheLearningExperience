SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00500L_1] (@aaDateID_RS int, @aaDateID_RE int) AS  set nocount on IF @aaDateID_RS IS NULL BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 ORDER BY aaDateID DESC END ELSE IF @aaDateID_RS = @aaDateID_RE BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 WHERE aaDateID = @aaDateID_RS ORDER BY aaDateID DESC END ELSE BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 WHERE aaDateID BETWEEN @aaDateID_RS AND @aaDateID_RE ORDER BY aaDateID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00500L_1] TO [DYNGRP]
GO
