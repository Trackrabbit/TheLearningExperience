SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY02700L_1] (@ENDTYPE_RS smallint, @SERIES_RS smallint, @MODULE1_RS smallint, @INDEX1_RS smallint, @ENDTYPE_RE smallint, @SERIES_RE smallint, @MODULE1_RE smallint, @INDEX1_RE smallint) AS  set nocount on IF @ENDTYPE_RS IS NULL BEGIN SELECT TOP 25  ENDTYPE, SERIES, MODULE1, INDEX1, RUTINAME, DATEDONE, USERID, PALCMDTP, PALETCMD, APLICFIL, DICTID, DEX_ROW_ID FROM .SY02700 ORDER BY ENDTYPE DESC, SERIES DESC, MODULE1 DESC, INDEX1 DESC END ELSE IF @ENDTYPE_RS = @ENDTYPE_RE BEGIN SELECT TOP 25  ENDTYPE, SERIES, MODULE1, INDEX1, RUTINAME, DATEDONE, USERID, PALCMDTP, PALETCMD, APLICFIL, DICTID, DEX_ROW_ID FROM .SY02700 WHERE ENDTYPE = @ENDTYPE_RS AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE ORDER BY ENDTYPE DESC, SERIES DESC, MODULE1 DESC, INDEX1 DESC END ELSE BEGIN SELECT TOP 25  ENDTYPE, SERIES, MODULE1, INDEX1, RUTINAME, DATEDONE, USERID, PALCMDTP, PALETCMD, APLICFIL, DICTID, DEX_ROW_ID FROM .SY02700 WHERE ENDTYPE BETWEEN @ENDTYPE_RS AND @ENDTYPE_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE ORDER BY ENDTYPE DESC, SERIES DESC, MODULE1 DESC, INDEX1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02700L_1] TO [DYNGRP]
GO
