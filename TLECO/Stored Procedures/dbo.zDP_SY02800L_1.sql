SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY02800L_1] (@ENDTYPE_RS smallint, @SERIES_RS smallint, @MODULE1_RS smallint, @ENDTYPE_RE smallint, @SERIES_RE smallint, @MODULE1_RE smallint) AS  set nocount on IF @ENDTYPE_RS IS NULL BEGIN SELECT TOP 25  USERID, ENDTYPE, MODULE1, SERIES, DEX_ROW_ID FROM .SY02800 ORDER BY ENDTYPE DESC, SERIES DESC, MODULE1 DESC END ELSE IF @ENDTYPE_RS = @ENDTYPE_RE BEGIN SELECT TOP 25  USERID, ENDTYPE, MODULE1, SERIES, DEX_ROW_ID FROM .SY02800 WHERE ENDTYPE = @ENDTYPE_RS AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE ORDER BY ENDTYPE DESC, SERIES DESC, MODULE1 DESC END ELSE BEGIN SELECT TOP 25  USERID, ENDTYPE, MODULE1, SERIES, DEX_ROW_ID FROM .SY02800 WHERE ENDTYPE BETWEEN @ENDTYPE_RS AND @ENDTYPE_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE ORDER BY ENDTYPE DESC, SERIES DESC, MODULE1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02800L_1] TO [DYNGRP]
GO
