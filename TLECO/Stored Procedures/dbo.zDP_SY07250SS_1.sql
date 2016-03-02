SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07250SS_1] (@USERID char(15), @ListDictID smallint, @ListID smallint, @ViewID int, @DATE1 datetime, @TIME1 datetime, @ActionStatusID int) AS  set nocount on SELECT TOP 1  USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID, DEX_ROW_ID FROM .SY07250 WHERE USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND DATE1 = @DATE1 AND TIME1 = @TIME1 AND ActionStatusID = @ActionStatusID ORDER BY USERID ASC, ListDictID ASC, ListID ASC, ViewID ASC, DATE1 DESC, TIME1 DESC, ActionStatusID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07250SS_1] TO [DYNGRP]
GO
