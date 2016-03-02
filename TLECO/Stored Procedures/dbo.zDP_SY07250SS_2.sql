SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07250SS_2] (@ActionStatusID int) AS  set nocount on SELECT TOP 1  USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID, DEX_ROW_ID FROM .SY07250 WHERE ActionStatusID = @ActionStatusID ORDER BY ActionStatusID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07250SS_2] TO [DYNGRP]
GO
