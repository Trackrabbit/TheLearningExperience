SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IF000004F_2] (@USERID_RS char(15), @JRNENTRY_RS int, @USERID_RE char(15), @JRNENTRY_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, BACHNUMB, BCHSOURC, JRNENTRY, SQNCLINE, DEX_ROW_ID FROM .IF000004 ORDER BY USERID ASC, JRNENTRY ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, BACHNUMB, BCHSOURC, JRNENTRY, SQNCLINE, DEX_ROW_ID FROM .IF000004 WHERE USERID = @USERID_RS AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY USERID ASC, JRNENTRY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, BACHNUMB, BCHSOURC, JRNENTRY, SQNCLINE, DEX_ROW_ID FROM .IF000004 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY USERID ASC, JRNENTRY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IF000004F_2] TO [DYNGRP]
GO
