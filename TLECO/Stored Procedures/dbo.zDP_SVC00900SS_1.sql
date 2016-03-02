SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00900SS_1] (@TIMEZONE char(3)) AS  set nocount on SELECT TOP 1  TIMEZONE, DSCRIPTN, TIMEZONEVALUE, TimeZoneMinute, DEX_ROW_ID FROM .SVC00900 WHERE TIMEZONE = @TIMEZONE ORDER BY TIMEZONE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00900SS_1] TO [DYNGRP]
GO