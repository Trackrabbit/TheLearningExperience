SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_GPS_SQL_Error_CodesF_1] (@Language_ID_RS smallint, @CODE_RS int, @Language_ID_RE smallint, @CODE_RE int) AS  set nocount on IF @Language_ID_RS IS NULL BEGIN SELECT TOP 25  Language_ID, CODE, SPROC, SMESSAGE, DEX_ROW_ID FROM .GPS_SQL_Error_Codes ORDER BY Language_ID ASC, CODE ASC END ELSE IF @Language_ID_RS = @Language_ID_RE BEGIN SELECT TOP 25  Language_ID, CODE, SPROC, SMESSAGE, DEX_ROW_ID FROM .GPS_SQL_Error_Codes WHERE Language_ID = @Language_ID_RS AND CODE BETWEEN @CODE_RS AND @CODE_RE ORDER BY Language_ID ASC, CODE ASC END ELSE BEGIN SELECT TOP 25  Language_ID, CODE, SPROC, SMESSAGE, DEX_ROW_ID FROM .GPS_SQL_Error_Codes WHERE Language_ID BETWEEN @Language_ID_RS AND @Language_ID_RE AND CODE BETWEEN @CODE_RS AND @CODE_RE ORDER BY Language_ID ASC, CODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GPS_SQL_Error_CodesF_1] TO [DYNGRP]
GO
