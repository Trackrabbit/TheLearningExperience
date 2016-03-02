SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00500F_3] (@aaFiscalYear_RS smallint, @DATE1_RS datetime, @aaDateID_RS int, @aaFiscalYear_RE smallint, @DATE1_RE datetime, @aaDateID_RE int) AS  set nocount on IF @aaFiscalYear_RS IS NULL BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 ORDER BY aaFiscalYear ASC, DATE1 ASC, aaDateID ASC END ELSE IF @aaFiscalYear_RS = @aaFiscalYear_RE BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 WHERE aaFiscalYear = @aaFiscalYear_RS AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND aaDateID BETWEEN @aaDateID_RS AND @aaDateID_RE ORDER BY aaFiscalYear ASC, DATE1 ASC, aaDateID ASC END ELSE BEGIN SELECT TOP 25  aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear, DEX_ROW_ID FROM .AAG00500 WHERE aaFiscalYear BETWEEN @aaFiscalYear_RS AND @aaFiscalYear_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND aaDateID BETWEEN @aaDateID_RS AND @aaDateID_RE ORDER BY aaFiscalYear ASC, DATE1 ASC, aaDateID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00500F_3] TO [DYNGRP]
GO
