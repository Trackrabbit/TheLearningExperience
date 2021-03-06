SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40601F_3] (@CMPANYID_RS smallint, @AssignNum_RS int, @CMPANYID_RE smallint, @AssignNum_RE int) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  AssignNum, CmdDictID, CmdFormID, CmdID, AssignedUserID, TYPEID, STRTDATE, DUEDATE, Status, UserWhoCreated, CMPANYID, AssignmentDate, Completion_Date, COMPLETEDBY, DEX_ROW_ID, CMMTTEXT FROM .SY40601 ORDER BY CMPANYID ASC, AssignNum ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  AssignNum, CmdDictID, CmdFormID, CmdID, AssignedUserID, TYPEID, STRTDATE, DUEDATE, Status, UserWhoCreated, CMPANYID, AssignmentDate, Completion_Date, COMPLETEDBY, DEX_ROW_ID, CMMTTEXT FROM .SY40601 WHERE CMPANYID = @CMPANYID_RS AND AssignNum BETWEEN @AssignNum_RS AND @AssignNum_RE ORDER BY CMPANYID ASC, AssignNum ASC END ELSE BEGIN SELECT TOP 25  AssignNum, CmdDictID, CmdFormID, CmdID, AssignedUserID, TYPEID, STRTDATE, DUEDATE, Status, UserWhoCreated, CMPANYID, AssignmentDate, Completion_Date, COMPLETEDBY, DEX_ROW_ID, CMMTTEXT FROM .SY40601 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND AssignNum BETWEEN @AssignNum_RS AND @AssignNum_RE ORDER BY CMPANYID ASC, AssignNum ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40601F_3] TO [DYNGRP]
GO
