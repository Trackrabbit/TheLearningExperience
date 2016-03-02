SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01401F_1] (@USERID_RS char(15), @coDefaultType_RS smallint, @USERID_RE char(15), @coDefaultType_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, coDefaultType, USRDFSTR, DEX_ROW_ID FROM .SY01401 ORDER BY USERID ASC, coDefaultType ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, coDefaultType, USRDFSTR, DEX_ROW_ID FROM .SY01401 WHERE USERID = @USERID_RS AND coDefaultType BETWEEN @coDefaultType_RS AND @coDefaultType_RE ORDER BY USERID ASC, coDefaultType ASC END ELSE BEGIN SELECT TOP 25  USERID, coDefaultType, USRDFSTR, DEX_ROW_ID FROM .SY01401 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND coDefaultType BETWEEN @coDefaultType_RS AND @coDefaultType_RE ORDER BY USERID ASC, coDefaultType ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01401F_1] TO [DYNGRP]
GO
