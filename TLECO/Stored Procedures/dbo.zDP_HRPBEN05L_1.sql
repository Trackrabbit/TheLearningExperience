SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPBEN05L_1] (@COMPANYCODE_I_RS char(7), @COMPANYCODE_I_RE char(7)) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, SET12MONTH_I, O12MONTHSTART_I, SCOPEOFPERIOD_I, DAYS_I, HOURSWORKEDPERDAY_I, DEX_ROW_ID FROM .HRPBEN05 ORDER BY COMPANYCODE_I DESC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, SET12MONTH_I, O12MONTHSTART_I, SCOPEOFPERIOD_I, DAYS_I, HOURSWORKEDPERDAY_I, DEX_ROW_ID FROM .HRPBEN05 WHERE COMPANYCODE_I = @COMPANYCODE_I_RS ORDER BY COMPANYCODE_I DESC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, SET12MONTH_I, O12MONTHSTART_I, SCOPEOFPERIOD_I, DAYS_I, HOURSWORKEDPERDAY_I, DEX_ROW_ID FROM .HRPBEN05 WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE ORDER BY COMPANYCODE_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPBEN05L_1] TO [DYNGRP]
GO
