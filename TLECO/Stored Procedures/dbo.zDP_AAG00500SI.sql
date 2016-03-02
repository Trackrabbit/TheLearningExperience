SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00500SI] (@aaDateID int, @DATE1 datetime, @aaCalWeek smallint, @aaCalMonth smallint, @aaCalQuarter smallint, @aaCalHalfYear smallint, @aaCalYear smallint, @aaFiscalWeek smallint, @aaFiscalPeriod smallint, @aaFiscalQuarter smallint, @aaFiscalHalfYear smallint, @aaFiscalYear smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00500 (aaDateID, DATE1, aaCalWeek, aaCalMonth, aaCalQuarter, aaCalHalfYear, aaCalYear, aaFiscalWeek, aaFiscalPeriod, aaFiscalQuarter, aaFiscalHalfYear, aaFiscalYear) VALUES ( @aaDateID, @DATE1, @aaCalWeek, @aaCalMonth, @aaCalQuarter, @aaCalHalfYear, @aaCalYear, @aaFiscalWeek, @aaFiscalPeriod, @aaFiscalQuarter, @aaFiscalHalfYear, @aaFiscalYear) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00500SI] TO [DYNGRP]
GO
