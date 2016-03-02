SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000002L_1] (@USERID_RS char(15), @SERIES_RS smallint, @TYPEID_RS smallint, @USERID_RE char(15), @SERIES_RE smallint, @TYPEID_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, SERIES, TYPEID, BACHNUMB, JRNENTRY, SEQNUMBR, DEX_ROW_ID FROM .PP000002 ORDER BY USERID DESC, SERIES DESC, TYPEID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, SERIES, TYPEID, BACHNUMB, JRNENTRY, SEQNUMBR, DEX_ROW_ID FROM .PP000002 WHERE USERID = @USERID_RS AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND TYPEID BETWEEN @TYPEID_RS AND @TYPEID_RE ORDER BY USERID DESC, SERIES DESC, TYPEID DESC END ELSE BEGIN SELECT TOP 25  USERID, SERIES, TYPEID, BACHNUMB, JRNENTRY, SEQNUMBR, DEX_ROW_ID FROM .PP000002 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND TYPEID BETWEEN @TYPEID_RS AND @TYPEID_RE ORDER BY USERID DESC, SERIES DESC, TYPEID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000002L_1] TO [DYNGRP]
GO
