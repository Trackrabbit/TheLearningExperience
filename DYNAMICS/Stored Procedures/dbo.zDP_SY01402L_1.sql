SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01402L_1] (@USERID_RS char(15), @syDefaultType_RS smallint, @USERID_RE char(15), @syDefaultType_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, syDefaultType, SYUSERDFSTR, DEX_ROW_ID FROM .SY01402 ORDER BY USERID DESC, syDefaultType DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, syDefaultType, SYUSERDFSTR, DEX_ROW_ID FROM .SY01402 WHERE USERID = @USERID_RS AND syDefaultType BETWEEN @syDefaultType_RS AND @syDefaultType_RE ORDER BY USERID DESC, syDefaultType DESC END ELSE BEGIN SELECT TOP 25  USERID, syDefaultType, SYUSERDFSTR, DEX_ROW_ID FROM .SY01402 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND syDefaultType BETWEEN @syDefaultType_RS AND @syDefaultType_RE ORDER BY USERID DESC, syDefaultType DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01402L_1] TO [DYNGRP]
GO
