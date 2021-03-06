SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500001L_1] (@USERID_RS char(15), @WINDSPNM_RS char(53), @USERID_RE char(15), @WINDSPNM_RE char(53)) AS /* 12.00.0270.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, SPS, WINDSPNM, CMPNYNAM, LOGINDAT, LOGINTIM, DEX_ROW_ID FROM .B0500001 ORDER BY USERID DESC, WINDSPNM DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, SPS, WINDSPNM, CMPNYNAM, LOGINDAT, LOGINTIM, DEX_ROW_ID FROM .B0500001 WHERE USERID = @USERID_RS AND WINDSPNM BETWEEN @WINDSPNM_RS AND @WINDSPNM_RE ORDER BY USERID DESC, WINDSPNM DESC END ELSE BEGIN SELECT TOP 25  USERID, SPS, WINDSPNM, CMPNYNAM, LOGINDAT, LOGINTIM, DEX_ROW_ID FROM .B0500001 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND WINDSPNM BETWEEN @WINDSPNM_RS AND @WINDSPNM_RE ORDER BY USERID DESC, WINDSPNM DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500001L_1] TO [DYNGRP]
GO
