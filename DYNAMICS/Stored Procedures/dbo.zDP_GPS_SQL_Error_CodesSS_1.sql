SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_GPS_SQL_Error_CodesSS_1] (@Language_ID smallint, @CODE int) AS  set nocount on SELECT TOP 1  Language_ID, CODE, SPROC, SMESSAGE, DEX_ROW_ID FROM .GPS_SQL_Error_Codes WHERE Language_ID = @Language_ID AND CODE = @CODE ORDER BY Language_ID ASC, CODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GPS_SQL_Error_CodesSS_1] TO [DYNGRP]
GO
