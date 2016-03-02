SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07250L_1] (@USERID_RS char(15), @ListDictID_RS smallint, @ListID_RS smallint, @ViewID_RS int, @DATE1_RS datetime, @TIME1_RS datetime, @ActionStatusID_RS int, @USERID_RE char(15), @ListDictID_RE smallint, @ListID_RE smallint, @ViewID_RE int, @DATE1_RE datetime, @TIME1_RE datetime, @ActionStatusID_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID, DEX_ROW_ID FROM .SY07250 ORDER BY USERID DESC, ListDictID DESC, ListID DESC, ViewID DESC, DATE1 ASC, TIME1 ASC, ActionStatusID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID, DEX_ROW_ID FROM .SY07250 WHERE USERID = @USERID_RS AND ListDictID BETWEEN @ListDictID_RS AND @ListDictID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE AND DATE1 BETWEEN @DATE1_RE AND @DATE1_RS AND TIME1 BETWEEN @TIME1_RE AND @TIME1_RS AND ActionStatusID BETWEEN @ActionStatusID_RS AND @ActionStatusID_RE ORDER BY USERID DESC, ListDictID DESC, ListID DESC, ViewID DESC, DATE1 ASC, TIME1 ASC, ActionStatusID DESC END ELSE BEGIN SELECT TOP 25  USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID, DEX_ROW_ID FROM .SY07250 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND ListDictID BETWEEN @ListDictID_RS AND @ListDictID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE AND DATE1 BETWEEN @DATE1_RE AND @DATE1_RS AND TIME1 BETWEEN @TIME1_RE AND @TIME1_RS AND ActionStatusID BETWEEN @ActionStatusID_RS AND @ActionStatusID_RE ORDER BY USERID DESC, ListDictID DESC, ListID DESC, ViewID DESC, DATE1 ASC, TIME1 ASC, ActionStatusID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07250L_1] TO [DYNGRP]
GO
