SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04920F_1] (@USERID_RS char(15), @Exchange_Address_RS char(238), @USERID_RE char(15), @Exchange_Address_RE char(238)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, Exchange_Address, Exchange_Server_URL, DEX_ROW_ID FROM .SY04920 ORDER BY USERID ASC, Exchange_Address ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, Exchange_Address, Exchange_Server_URL, DEX_ROW_ID FROM .SY04920 WHERE USERID = @USERID_RS AND Exchange_Address BETWEEN @Exchange_Address_RS AND @Exchange_Address_RE ORDER BY USERID ASC, Exchange_Address ASC END ELSE BEGIN SELECT TOP 25  USERID, Exchange_Address, Exchange_Server_URL, DEX_ROW_ID FROM .SY04920 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND Exchange_Address BETWEEN @Exchange_Address_RS AND @Exchange_Address_RE ORDER BY USERID ASC, Exchange_Address ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04920F_1] TO [DYNGRP]
GO
