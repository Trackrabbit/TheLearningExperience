SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00500L_2] (@DATE1_RS datetime, @aaDateID_RS int, @DATE1_RE datetime, @aaDateID_RE int) AS  set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 ORDER BY DATE1 DESC, aaDateID DESC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 WHERE DATE1 = @DATE1_RS AND aaDateID BETWEEN @aaDateID_RS AND @aaDateID_RE ORDER BY DATE1 DESC, aaDateID DESC END ELSE BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND aaDateID BETWEEN @aaDateID_RS AND @aaDateID_RE ORDER BY DATE1 DESC, aaDateID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00500L_2] TO [DYNGRP]
GO
