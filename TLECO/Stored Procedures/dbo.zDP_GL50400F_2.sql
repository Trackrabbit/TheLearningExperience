SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50400F_2] (@USERID_RS char(15), @USERID_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  PERIODID, YEAR1, USERID, DEX_ROW_ID FROM .GL50400 ORDER BY USERID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  PERIODID, YEAR1, USERID, DEX_ROW_ID FROM .GL50400 WHERE USERID = @USERID_RS ORDER BY USERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PERIODID, YEAR1, USERID, DEX_ROW_ID FROM .GL50400 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY USERID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50400F_2] TO [DYNGRP]
GO
