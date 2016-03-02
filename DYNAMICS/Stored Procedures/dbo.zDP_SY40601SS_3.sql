SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40601SS_3] (@CMPANYID smallint, @AssignNum int) AS  set nocount on SELECT TOP 1  AssignNum, CmdDictID, CmdFormID, CmdID, AssignedUserID, TYPEID, STRTDATE, DUEDATE, Status, UserWhoCreated, CMPANYID, AssignmentDate, Completion_Date, COMPLETEDBY, DEX_ROW_ID, CMMTTEXT FROM .SY40601 WHERE CMPANYID = @CMPANYID AND AssignNum = @AssignNum ORDER BY CMPANYID ASC, AssignNum ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40601SS_3] TO [DYNGRP]
GO
