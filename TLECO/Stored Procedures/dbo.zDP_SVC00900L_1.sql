SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00900L_1] (@TIMEZONE_RS char(3), @TIMEZONE_RE char(3)) AS  set nocount on IF @TIMEZONE_RS IS NULL BEGIN SELECT TOP 25  TIMEZONE, DSCRIPTN, TIMEZONEVALUE, TimeZoneMinute, DEX_ROW_ID FROM .SVC00900 ORDER BY TIMEZONE DESC END ELSE IF @TIMEZONE_RS = @TIMEZONE_RE BEGIN SELECT TOP 25  TIMEZONE, DSCRIPTN, TIMEZONEVALUE, TimeZoneMinute, DEX_ROW_ID FROM .SVC00900 WHERE TIMEZONE = @TIMEZONE_RS ORDER BY TIMEZONE DESC END ELSE BEGIN SELECT TOP 25  TIMEZONE, DSCRIPTN, TIMEZONEVALUE, TimeZoneMinute, DEX_ROW_ID FROM .SVC00900 WHERE TIMEZONE BETWEEN @TIMEZONE_RS AND @TIMEZONE_RE ORDER BY TIMEZONE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00900L_1] TO [DYNGRP]
GO
