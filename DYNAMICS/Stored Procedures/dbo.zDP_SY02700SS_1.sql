SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY02700SS_1] (@ENDTYPE smallint, @SERIES smallint, @MODULE1 smallint, @INDEX1 smallint) AS  set nocount on SELECT TOP 1  ENDTYPE, SERIES, MODULE1, INDEX1, RUTINAME, DATEDONE, USERID, PALCMDTP, PALETCMD, APLICFIL, DICTID, DEX_ROW_ID FROM .SY02700 WHERE ENDTYPE = @ENDTYPE AND SERIES = @SERIES AND MODULE1 = @MODULE1 AND INDEX1 = @INDEX1 ORDER BY ENDTYPE ASC, SERIES ASC, MODULE1 ASC, INDEX1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02700SS_1] TO [DYNGRP]
GO
