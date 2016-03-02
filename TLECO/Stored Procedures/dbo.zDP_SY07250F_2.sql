SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07250F_2] (@ActionStatusID_RS int, @ActionStatusID_RE int) AS  set nocount on IF @ActionStatusID_RS IS NULL BEGIN SELECT TOP 25  USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID, DEX_ROW_ID FROM .SY07250 ORDER BY ActionStatusID ASC END ELSE IF @ActionStatusID_RS = @ActionStatusID_RE BEGIN SELECT TOP 25  USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID, DEX_ROW_ID FROM .SY07250 WHERE ActionStatusID = @ActionStatusID_RS ORDER BY ActionStatusID ASC END ELSE BEGIN SELECT TOP 25  USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID, DEX_ROW_ID FROM .SY07250 WHERE ActionStatusID BETWEEN @ActionStatusID_RS AND @ActionStatusID_RE ORDER BY ActionStatusID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07250F_2] TO [DYNGRP]
GO
