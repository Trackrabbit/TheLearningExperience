SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40601SS_1] (@CMPANYID smallint, @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @TYPEID smallint, @AssignedUserID char(15)) AS  set nocount on SELECT TOP 1  AssignNum, CmdDictID, CmdFormID, CmdID, AssignedUserID, TYPEID, STRTDATE, DUEDATE, Status, UserWhoCreated, CMPANYID, AssignmentDate, Completion_Date, COMPLETEDBY, DEX_ROW_ID, CMMTTEXT FROM .SY40601 WHERE CMPANYID = @CMPANYID AND CmdDictID = @CmdDictID AND CmdFormID = @CmdFormID AND CmdID = @CmdID AND TYPEID = @TYPEID AND AssignedUserID = @AssignedUserID ORDER BY CMPANYID ASC, CmdDictID ASC, CmdFormID ASC, CmdID ASC, TYPEID ASC, AssignedUserID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40601SS_1] TO [DYNGRP]
GO
