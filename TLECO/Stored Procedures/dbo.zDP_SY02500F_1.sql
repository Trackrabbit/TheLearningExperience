SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY02500F_1] (@ENDTYPE_RS smallint, @SERIES_RS smallint, @MODULE1_RS smallint, @INDEX1_RS smallint, @ENDTYPE_RE smallint, @SERIES_RE smallint, @MODULE1_RE smallint, @INDEX1_RE smallint) AS  set nocount on IF @ENDTYPE_RS IS NULL BEGIN SELECT TOP 25  ENDTYPE, SERIES, MODULE1, INDEX1, RUTINAME, DATEDONE, USERID, PALCMDTP, PALETCMD, APLICFIL, DICTID, TIME1, DEX_ROW_ID FROM .SY02500 ORDER BY ENDTYPE ASC, SERIES ASC, MODULE1 ASC, INDEX1 ASC END ELSE IF @ENDTYPE_RS = @ENDTYPE_RE BEGIN SELECT TOP 25  ENDTYPE, SERIES, MODULE1, INDEX1, RUTINAME, DATEDONE, USERID, PALCMDTP, PALETCMD, APLICFIL, DICTID, TIME1, DEX_ROW_ID FROM .SY02500 WHERE ENDTYPE = @ENDTYPE_RS AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE ORDER BY ENDTYPE ASC, SERIES ASC, MODULE1 ASC, INDEX1 ASC END ELSE BEGIN SELECT TOP 25  ENDTYPE, SERIES, MODULE1, INDEX1, RUTINAME, DATEDONE, USERID, PALCMDTP, PALETCMD, APLICFIL, DICTID, TIME1, DEX_ROW_ID FROM .SY02500 WHERE ENDTYPE BETWEEN @ENDTYPE_RS AND @ENDTYPE_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE ORDER BY ENDTYPE ASC, SERIES ASC, MODULE1 ASC, INDEX1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02500F_1] TO [DYNGRP]
GO
