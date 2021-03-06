SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50400L_1] (@PERIODID_RS smallint, @YEAR1_RS smallint, @PERIODID_RE smallint, @YEAR1_RE smallint) AS  set nocount on IF @PERIODID_RS IS NULL BEGIN SELECT TOP 25  PERIODID, YEAR1, USERID, DEX_ROW_ID FROM .GL50400 ORDER BY PERIODID DESC, YEAR1 DESC END ELSE IF @PERIODID_RS = @PERIODID_RE BEGIN SELECT TOP 25  PERIODID, YEAR1, USERID, DEX_ROW_ID FROM .GL50400 WHERE PERIODID = @PERIODID_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY PERIODID DESC, YEAR1 DESC END ELSE BEGIN SELECT TOP 25  PERIODID, YEAR1, USERID, DEX_ROW_ID FROM .GL50400 WHERE PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY PERIODID DESC, YEAR1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50400L_1] TO [DYNGRP]
GO
