SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01403SS_1] (@CMRECNUM numeric(19,5)) AS  set nocount on SELECT TOP 1  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE CMRECNUM = @CMRECNUM ORDER BY CMRECNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01403SS_1] TO [DYNGRP]
GO